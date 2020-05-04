//
//  MainViewController.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/20.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var mainSidedishTableView: UITableView!
    private let cellNib = UINib(nibName: "SideDishTableViewCell", bundle: nil)
    private let headerNib = UINib(nibName: "SidedishTableViewHeader", bundle: nil)
    private let dataSource = SidedishDataSource()
    private var useCase = SidedishUseCase()
    private let networkManager = NetworkManager()
    private var allMenu = [Int:SidedishInfo]()
    private let delegate = SidedishTableViewDelegate()
    static let CellSelectedNotification = Notification.Name("CellSelectedNotification")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNotification()
        setupTableView()
        configureUseCase()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: SidedishUseCase.SidedishUseCaseNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: SidedishTableViewDelegate.CellSelectedNotification, object: nil)
    }
    
    private func setupTableView(){
        self.mainSidedishTableView.register(cellNib, forCellReuseIdentifier: SideDishTableViewCell.identifier)
        self.mainSidedishTableView.register(headerNib, forHeaderFooterViewReuseIdentifier: SidedishTableViewHeader.identifier)
        self.mainSidedishTableView.dataSource = dataSource
        self.mainSidedishTableView.delegate = delegate
    }
    
    private func configureUseCase() {
        useCase.getMainMenu(with: networkManager)
        useCase.getSideMenu(with: networkManager)
        useCase.getSoupMenu(with: networkManager)
    }
    
    private func setupNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateTableView), name: SidedishUseCase.SidedishUseCaseNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(openDetailView), name: SidedishTableViewDelegate.CellSelectedNotification, object: nil)
    }
    
    @objc private func updateTableView(noti: Notification) {
        guard let allMenu = noti.userInfo?["AllMenu"] as? SidedishInfo else { return }
        let categoryId = allMenu.id - 1
        self.allMenu[categoryId] = allMenu
        self.dataSource.allSidedishes[categoryId] = allMenu.items
        let indexSet: IndexSet = [categoryId]
        self.delegate.headerModel = self.allMenu
        DispatchQueue.main.sync {
            self.mainSidedishTableView.reloadSections(indexSet, with: .automatic)
        }
    }
    
    @objc private func openDetailView(noti: Notification) {
        guard let indexPath = noti.userInfo?["indexPath"] as? IndexPath else { return }
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "MenuDetailViewController", sender: self )
        }
        guard let dishHash = allMenu[indexPath.section]?.items[indexPath.row].detail_hash else {return}
        useCase.getDishDetailInfo(with: networkManager, dishHash: dishHash){ detailInfo in
            self.sendNotification(detailInfo: detailInfo)
        }
    }
    
    private func sendNotification(detailInfo: DishDetailInfo) {
        NotificationCenter.default.post(name: MainViewController.CellSelectedNotification, object: nil, userInfo: ["detailInfo":detailInfo])
    }
}

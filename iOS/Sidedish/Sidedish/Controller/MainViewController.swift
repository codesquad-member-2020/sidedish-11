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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNotification()
        setupTableView()
        configureUseCase()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: SidedishUseCase.SidedishUseCaseNotification, object: nil)
    }
    
    private func setupTableView(){
        self.mainSidedishTableView.dataSource = dataSource
        self.mainSidedishTableView.register(cellNib, forCellReuseIdentifier: SideDishTableViewCell.identifier)
        self.mainSidedishTableView.register(headerNib, forHeaderFooterViewReuseIdentifier: SidedishTableViewHeader.identifier)
        self.mainSidedishTableView.delegate = delegate
    }
    
    private func configureUseCase() {
        useCase.bringSidedishMenu(with: MainMockNetworkSuccessStub(), url: "")
        useCase.bringSidedishMenu(with: SoupMockNetworkSuccessStub(), url: "")
        useCase.bringSidedishMenu(with: NetworkManager(), url: EndPoints.sideMockupURL)
    }
    
    private func setupNotification() {
        let notiCenter = NotificationCenter.default
        notiCenter.addObserver(forName: SidedishUseCase.SidedishUseCaseNotification, object: nil, queue: .main) { noti in
            guard let allMenu = noti.userInfo?["AllMenu"] as? SidedishInfo else { return }
            let categoryId = allMenu.id - 1
            DispatchQueue.main.async {
                self.allMenu[categoryId] = allMenu
                self.dataSource.allSidedishes[categoryId] = allMenu.items
                let indexSet: IndexSet = [categoryId]
                self.delegate.headerModel = self.allMenu
                self.mainSidedishTableView.reloadSections(indexSet, with: .automatic)
            }
        }
    }
}

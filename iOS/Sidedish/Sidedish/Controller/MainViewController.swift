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
    private let dataSource = SidedishDataSource()
    private var useCase = SidedishUseCase()
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
        self.mainSidedishTableView.delegate = delegate
    }
    
    private func configureUseCase() {
        useCase.bringSidedishMenu(with: NetworkManager())
    }
    
    private func setupNotification() {
        let notiCenter = NotificationCenter.default
        notiCenter.addObserver(forName: SidedishUseCase.SidedishUseCaseNotification, object: nil, queue: .main) { noti in
            guard let allMenu = noti.userInfo?["AllMenu"] as? [Int:[Sidedish]] else { return }
            self.dataSource.allSidedishes = allMenu
            self.mainSidedishTableView.reloadData()
        }
    }
}


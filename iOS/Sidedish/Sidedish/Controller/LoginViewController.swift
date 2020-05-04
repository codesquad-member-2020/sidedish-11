//
//  LoginViewController.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/27.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import UIKit
import Toaster

class LoginViewController: UIViewController {
    
    private let useCase = SidedishUseCase()
   override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func loginButtonTapped(_ sender: Any) {
        useCase.getUserInfo(with: NetworkManager()){ userInfo in
            let github = String(decoding: userInfo, as: UTF8.self)
//            Toast(text: github).show()
        }
    }
}

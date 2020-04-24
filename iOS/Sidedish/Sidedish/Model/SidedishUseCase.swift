//
//  SidedishUseCase.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/21.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import Foundation

class SidedishUseCase {
    
    static let SidedishUseCaseNotification = NSNotification.Name("NetworkManagerNotification")

    func bringSidedishMenu(with manager: NetworkManagable, url: String) {
        try? manager.getSidedishResource(from: url) { (data, error) in
            guard let data = data else { return }
            do {
             let sidedishes = try JSONDecoder().decode(SidedishInfo.self, from: data)
            SidedishUseCase.sendNotification(allMenu: sidedishes)
            } catch {
                print(error)
            }
        }
    }
        
    func bringsidedishImage(with manager: NetworkManagable, imageURL: String, completed: @escaping (Data) -> ()) {
        try? manager.getSidedishResource(from: imageURL) { (data, error) in
            guard let image = data else { return }
            completed(image)
        }
    }
        
    static func sendNotification(allMenu: SidedishInfo) {
        NotificationCenter.default.post(name: SidedishUseCase.SidedishUseCaseNotification, object: nil, userInfo: ["AllMenu":allMenu])
    }
}

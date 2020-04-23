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

    func bringSidedishMenu(with manager: NetworkManagable) {
        var allMenu: [Int:[Sidedish]] = [:]
        
        try? manager.getSidedishResource(from: EndPoints.main) { (data, error) in
            guard let data = data else { return }
            let sidedishes = try? JSONDecoder().decode(SidedishInfo.self, from: data)
            // API 완성 후 sidedshes에 있는 (카테고리 아이디-1)로 변경
            allMenu[Category.Main] = sidedishes?.body
            SidedishUseCase.sendNotification(allMenu: allMenu)
        }
        try? manager.getSidedishResource(from: EndPoints.soup) { (data, error) in
            guard let data = data else { return }
            let sidedishes = try? JSONDecoder().decode(SidedishInfo.self, from: data)
            allMenu[Category.Soup] = sidedishes?.body
            SidedishUseCase.sendNotification(allMenu: allMenu)

        }
        try? manager.getSidedishResource(from: EndPoints.side) { (data, error) in
            guard let data = data else { return }
            let sidedishes = try? JSONDecoder().decode(SidedishInfo.self, from: data)
            allMenu[Category.Side] = sidedishes?.body
            SidedishUseCase.sendNotification(allMenu: allMenu)
        }
    }
    
    func bringsidedishImage(with manager: NetworkManagable, imageURL: String, completed: @escaping (Data) -> ()) {
        try? manager.getSidedishResource(from: imageURL) { (data, error) in
            guard let image = data else { return }
            completed(image)
        }
    }
    
    enum Category {
        static let Main = 0
        static let Soup = 1
        static let Side = 2
    }
    
    static func sendNotification(allMenu: [Int:[Sidedish]]) {
        NotificationCenter.default.post(name: SidedishUseCase.SidedishUseCaseNotification, object: nil, userInfo: ["AllMenu":allMenu])
    }
}

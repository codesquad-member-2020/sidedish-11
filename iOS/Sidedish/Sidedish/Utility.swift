//
//  Utility.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/22.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import Foundation

enum CustomColor {
    static let LightPurple = "LightPurple"
    static let PointMint = "PointMint"
    static let OrangeYellow = "OrangeYellow"
    static let RedOrange = "RedOrange"
    static let Black = "black"
}

enum EventCase: String, CustomStringConvertible {
    var description: String {
        return "\(self.rawValue)"
    }
    
    case SpecialPrice = "이벤트특가", FreeGift = "사은품증정", SoldOut = "품절", LaunchingPrice = "론칭특가"
}

enum EndPoints {
    static let url = "http://3.34.55.104:8080"
    static let main = "\(EndPoints.url)/main"
    static let side = "\(EndPoints.url)/side"
    static let soup = "\(EndPoints.url)/soup"
    static let detail = "\(EndPoints.url)/detail"
    static let login = "https://github.com/login/oauth/authorize?client_id=8d92d01b11ba14d3d18f&scope=user%20public_repo"
}

enum Category {
    static let Main = 0
    static let Soup = 1
    static let Side = 2
}


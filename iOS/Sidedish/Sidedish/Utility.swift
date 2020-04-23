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

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
    static let main = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main"
    static let side = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/side"
    static let soup = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/soup"
    static let detail = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail/"
    static let placeholder = "https://byline.network/wp-content/uploads/2018/11/%EB%B0%B0%EB%AF%BC%EC%B0%AC-%EB%A1%9C%EA%B3%A0.jpg"
}

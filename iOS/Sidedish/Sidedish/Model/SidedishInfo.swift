//
//  SidedishInfo.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/21.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import Foundation

struct SidedishInfo: Codable {
    let statusCode: Int
    let body: [Sidedish]
}

struct Sidedish: Codable {
    let detail_hash: String
    let image: String
    let alt: String
    let delivery_type: [String]
    let title: String
    let description: String?
    let n_price: String?
    let s_price: String
    let badge: [String]?
}

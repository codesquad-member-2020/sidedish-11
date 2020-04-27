//
//  SidedishInfo.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/21.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import Foundation

struct SidedishInfo: Codable {
    let id: Int
    let name: String
    let description: String
    let url: String
    let items: [Sidedish]
}

struct Sidedish: Codable {
    let detail_hash: String
    let image: String
    let alt: String
    let title: String
    let description: String?
    let n_price: Int
    let s_price: Int?
    let badge: [String]?
    let delivery_type: [String]
    let color: [String]?
}

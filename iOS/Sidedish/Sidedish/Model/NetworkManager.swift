//
//  NetworkManager.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/21.
//  Copyright © 2020 dev-Lena. All rights reserved.
//
//
import Foundation
import Alamofire

protocol NetworkManagable {
    func getSidedishResource(from: String, handler: @escaping (Data?, Error?) -> ()) throws
}

enum NetworkErrorCase : Error {
    case InvalidURL
    case NotFound
}

struct NetworkManager: NetworkManagable {
    
    static let NetworkManagerNotification = NSNotification.Name("NetworkManagerNotification")

    func getSidedishResource(from: String, handler: @escaping (Data?, Error?) -> ()) throws {
        guard let url = URL(string: from) else {
            throw NetworkErrorCase.InvalidURL
        }
        AF.request(url,method: .get).responseData{ response in
            if case .success(let sidedishData) = response.result{
            handler(sidedishData, response.error)
                debugPrint(response.data)
            }
        }
    }

    enum EndPoints {
        static let main = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main"
        static let side = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/side"
        static let soup = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/soup"
        static let detail = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail/"
    }
}


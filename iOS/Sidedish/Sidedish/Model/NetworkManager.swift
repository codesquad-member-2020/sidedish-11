//
//  NetworkManager.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/21.
//  Copyright © 2020 dev-Lena. All rights reserved.
//
//
import Foundation

protocol NetworkManagable {
    func getResource(from: String, handler: @escaping (Data?, Error?) -> ()) throws
    func downloadResource(from: String, handler: @escaping (Data?,URL?, Error?) -> ()) throws
}

enum NetworkErrorCase : Error {
    case InvalidURL
    case NotFound
    case DecodingError
}

struct NetworkManager: NetworkManagable {
    
    func getResource(from: String, handler: @escaping (Data?, Error?) -> ()) throws {
        guard let url = URL(string: from) else {
            throw NetworkErrorCase.InvalidURL
        }
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            handler(data, error)
        }.resume()
    }
    
    func downloadResource(from: String, handler: @escaping (Data?, URL? ,Error?) -> ()) throws {
        guard let url = URL(string: from) else { return
            throw NetworkErrorCase.InvalidURL
        }
        
         URLSession.shared.downloadTask(with: url) { localURL, urlResponse, error in
            guard let localURL = localURL else {return}
            do {
                let imageData = try Data(contentsOf: localURL as URL)
                handler(imageData,localURL,error)
            } catch {
                print("Unable to load data: \(error)")
            }
         }.resume()
    }
}




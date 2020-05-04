//
//  ImageManager.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/27.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import Foundation
import UIKit

class ImageManager {
    
    let useCase = SidedishUseCase()
    private let fileManager = FileManager()
    private let cacheDirectory = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first!
    
    func downloadImage(imageURL: String, handler: @escaping (UIImage?) -> ()) {
         useCase.downloadSidedishImage(with: NetworkManager(), imageURL: imageURL){ imageData, fileURL in
            do {
                let file = fileURL.lastPathComponent
                let imagePath = self.cacheDirectory.appendingPathComponent("\(file)").absoluteString
                if !self.fileManager.fileExists(atPath: imagePath){
                self.save(fileURL.lastPathComponent, content: imageData)
                let image = UIImage(data: imageData)
                handler(image)
                }
            } 
        }
    }
    
    private func save(_ urlString: String, content data: Data) {
        let url = cacheDirectory.appendingPathComponent(urlString)
        
        do {
            if FileManager.default.fileExists(atPath: url.path) {
                try FileManager.default.removeItem(at: url)
            }
            
            FileManager.default.createFile(atPath: url.path, contents: data, attributes: nil)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
    func searchImage(imageUrl: URL, handler: @escaping (UIImage?) -> ()) throws{
        let file = imageUrl.lastPathComponent
        let imagePath = cacheDirectory.appendingPathComponent("\(file)").absoluteString
        
        if fileManager.fileExists(atPath: imagePath){
            let image = UIImage(contentsOfFile: imagePath)
            handler(image)
        }
    }
}

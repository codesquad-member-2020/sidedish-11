//
//  SidedishDataSource.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/21.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import UIKit

class SidedishDataSource: NSObject, UITableViewDataSource {
    
    var allSidedishes = [Int: [Sidedish]]()
    let imageManager = ImageManager()
    let useCase = SidedishUseCase()
    let categoryCount = 3
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allSidedishes[section]?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SideDishTableViewCell.identifier, for: indexPath) as! SideDishTableViewCell
        cell.viewModel = allSidedishes[indexPath.section]?[indexPath.row]
        if let imageString = cell.viewModel?.image {
                        
            // Using Caching
            // Search Image
            var foundImage: UIImage?
            if let imageURL = URL(string: imageString) {
                try? imageManager.searchImage(imageUrl: imageURL){
                    image in
                    DispatchQueue.main.async {
                        cell.sidedishImageView?.image = image
                        foundImage = image
                        
                    }
                }
                // If there is no Image, download image
                if foundImage == nil {
                    self.imageManager.downloadImage(imageURL: imageString){
                        image  in
                        DispatchQueue.main.async {
                            cell.sidedishImageView?.image = image
                        }
                    }
                }
            }
        }
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categoryCount
    }
}

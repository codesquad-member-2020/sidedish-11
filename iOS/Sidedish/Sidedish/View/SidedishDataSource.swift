//
//  SidedishDataSource.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/21.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import UIKit

class SidedishDataSource: NSObject, UITableViewDataSource {
    
    var allSidedishes: [Int: [Sidedish]]?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allSidedishes?[section]?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SideDishTableViewCell.identifier, for: indexPath) as! SideDishTableViewCell
        cell.viewModel = allSidedishes?[indexPath.section]?[indexPath.row]
        return cell
    }
}

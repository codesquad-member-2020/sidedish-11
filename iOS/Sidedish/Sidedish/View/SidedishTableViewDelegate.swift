//
//  SidedishTableViewDelegate.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/22.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import UIKit

class SidedishTableViewDelegate: NSObject, UITableViewDelegate {
    
    private let height = CGFloat(70)
    var headerModel = [Int: SidedishInfo]()
    
    func tableView(_ tableView: UITableView,
                   heightForHeaderInSection section: Int) -> CGFloat{
        return self.height
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: SidedishTableViewHeader.identifier) as! SidedishTableViewHeader
        header.section = section
        header.headerModel = headerModel
        return header
    }
}


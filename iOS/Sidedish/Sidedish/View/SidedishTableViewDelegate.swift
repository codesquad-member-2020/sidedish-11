//
//  SidedishTableViewDelegate.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/22.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import UIKit
import Toaster

class SidedishTableViewDelegate: NSObject, UITableViewDelegate {
    
    static let CellSelectedNotification = Notification.Name(rawValue: "CellSelectedNotification")
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
        header.tag = section
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(sectionHeaderTapped))
        tapRecognizer.delegate = self
        tapRecognizer.numberOfTapsRequired = 1
        tapRecognizer.numberOfTouchesRequired = 1
        header.addGestureRecognizer(tapRecognizer)
        return header
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sendNotification(indexPath: indexPath)
        
    }
    
    func sendNotification(indexPath: IndexPath) {
        NotificationCenter.default.post(name: SidedishTableViewDelegate.CellSelectedNotification, object: nil, userInfo: ["indexPath":indexPath])
    }
    
}
extension SidedishTableViewDelegate: UIGestureRecognizerDelegate{
    @objc func sectionHeaderTapped(gestureRecognizer: UIGestureRecognizer) {
        guard let section = gestureRecognizer.view?.tag else { return }
        guard let menuCategory = self.headerModel[section]?.name else { return }
        guard let menuCount = self.headerModel[section]?.items.count else { return }
        let toast = Toast(text: "'\(menuCategory)'에 무려 \(menuCount)가지 메뉴가 준비되어 있어요😆🎉")
        toast.show()
    }
}

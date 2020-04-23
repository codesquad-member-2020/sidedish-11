//
//  SidedishTableViewDelegate.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/22.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import UIKit

class SidedishTableViewDelegate: NSObject, UITableViewDelegate {
    
    private let height = CGFloat(50)
    var categoryId: Int?
    
    func tableView(_ tableView: UITableView,
                   heightForHeaderInSection section: Int) -> CGFloat{
        return self.height
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let indexPath = IndexPath(row: 0, section: section)
        let header = tableView.dequeueReusableCell(withIdentifier: SidedishTableViewHeader.identifier, for: indexPath) as! SidedishTableViewHeader
        setCategorySectionHeader(header: header)
        // 이 부분은 추후 백엔드와 상의할 예정입니다
        return header
    }
    
    private func setCategorySectionHeader(header: SidedishTableViewHeader) {
        switch self.categoryId {
        case 1:
            header.smallCategoryButton.setTitle("메인반찬", for: .normal)
            header.bigCategoryLabel.text = "한그릇 뚝딱 메인 요리"
        case 2:
            header.smallCategoryButton.setTitle("국.찌개", for: .normal)
            header.bigCategoryLabel.text = "김이 모락모락 국.찌개"
        case 3:
            header.smallCategoryButton.setTitle("메인반찬", for: .normal)
            header.bigCategoryLabel.text = "언제 먹어도 든든한 밑반찬"
        default:
            return
        }
    }
}


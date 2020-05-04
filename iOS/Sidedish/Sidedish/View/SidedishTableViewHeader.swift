//
//  SidedishTableViewHeader.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/22.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import UIKit

class SidedishTableViewHeader: UITableViewHeaderFooterView {
    
    static let identifier = "sidedishTableViewHeader"
    @IBOutlet weak var smallCategoryButton: UIButton!
    @IBOutlet weak var bigCategoryLabel: UILabel!
    var section = 0
    var headerModel : [Int: SidedishInfo]? {
        didSet {
            setupView()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    private func setupView(){
        self.backgroundView?.backgroundColor = .white
        smallCategoryButton.setTitle(headerModel?[section]? .name, for: .normal )
        smallCategoryButton.layer.cornerRadius = 0.2
        smallCategoryButton.layer.borderWidth = 1
        smallCategoryButton.layer.borderColor = UIColor.systemGray.cgColor
        bigCategoryLabel.text = headerModel?[section]?.description
    }
}


//
//  SidedishTableViewHeader.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/22.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import UIKit

class SidedishTableViewHeader: UITableViewCell {
    
    static let identifier = "sidedishTableViewHeader"
    @IBOutlet weak var smallCategoryButton: UIButton!
    @IBOutlet weak var bigCategoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func setupView(){
        smallCategoryButton.layer.borderWidth = 1
        smallCategoryButton.layer.borderColor = UIColor.gray.cgColor
    }    
}

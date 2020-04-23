//
//  SideDishTableViewCell.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/21.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import UIKit

class SideDishTableViewCell: UITableViewCell {
    static let identifier = "sideDishTableViewCell"
    @IBOutlet weak var sidedishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var eventLabelStackView: UIStackView!
    @IBOutlet weak var priceStackView: UIStackView!
    var dishImage: UIImage! {
        didSet {
            DispatchQueue.main.async {
                self.sidedishImageView.image = self.dishImage
            }
        }
    }
    var viewModel: Sidedish? {
        didSet {
            setupView()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func setupView() {
        self.titleLabel.text = viewModel?.title
        self.detailLabel.text = viewModel?.description
        self.setupPrice()
        self.setupEventBedge()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.titleLabel.text = nil
        for subView in eventLabelStackView.subviews {
            subView.removeFromSuperview()
        }
        for subView in priceStackView.subviews {
            subView.removeFromSuperview()
        }
    }
    
    private func setupPrice(){
        // 정상가
        if viewModel?.n_price != nil {
            let originalPriceLabel = UILabel()
            let attributeString =  NSMutableAttributedString(string: "My Text")
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle,
                                         value: NSUnderlineStyle.single.rawValue,
                                         range: NSMakeRange(0, attributeString.length))
            originalPriceLabel.attributedText = attributeString
            originalPriceLabel.text = viewModel?.n_price
            originalPriceLabel.textColor = .systemGray
            self.priceStackView.addArrangedSubview(originalPriceLabel)
        }
        // 판매가
        let salesPriceLabel = UILabel()
        salesPriceLabel.textColor = UIColor(named: CustomColor.PointMint)
        salesPriceLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        salesPriceLabel.text = viewModel?.s_price // 원
        self.priceStackView.addArrangedSubview(salesPriceLabel)
    }
    
    private func setupEventBedge() {
        if let events = viewModel?.badge {
            for event in events{
                let label = UILabel()
                label.text = " \(event) "
                let bedgeColor = self.decideBedgeColor(event: event)
                label.backgroundColor = UIColor(named: bedgeColor)
                label.textColor = .white
                label.font = label.font.withSize(13)
                self.eventLabelStackView.addArrangedSubview(label)
            }
        }
    }
    
    private func decideBedgeColor(event: String) -> String {
        switch event {
        case EventCase.SpecialPrice.description : return CustomColor.LightPurple
        case EventCase.FreeGift.description : return CustomColor.OrangeYellow
        case EventCase.LaunchingPrice.description : return CustomColor.RedOrange
        case EventCase.SoldOut.description : return CustomColor.Black
        default:
            return ""
        }
    }
}

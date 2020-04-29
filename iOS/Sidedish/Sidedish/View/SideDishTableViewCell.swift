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
        self.setupImageView()
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
    
    private func setupImageView(){
        self.sidedishImageView.layer.cornerRadius = self.sidedishImageView.frame.size.width / 2
    }
    
    private func setupPrice(){
        // 정상가
        var higherPrice = 0
        var salesPrice = 0
        guard let n_price = viewModel?.n_price else {return}
        guard let s_price = viewModel?.s_price else { return }
        if s_price != 0 { // 더 싼 가격이 있을 경우
            higherPrice = n_price
            salesPrice = s_price
            let originalPriceLabel = UILabel()
            let attributeString =  NSMutableAttributedString(string: "My Text")
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle,
                                         value: NSUnderlineStyle.single.rawValue,
                                         range: NSMakeRange(0, attributeString.length))
            originalPriceLabel.attributedText = attributeString
            originalPriceLabel.text = "\(higherPrice)"
            originalPriceLabel.textColor = .systemGray
            self.priceStackView.addArrangedSubview(originalPriceLabel)
            
        } else {
            salesPrice = n_price
        }
        // 판매가
        let salesPriceLabel = UILabel()
        salesPriceLabel.textColor = UIColor(named: CustomColor.PointMint)
        salesPriceLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        salesPriceLabel.text = "\(salesPrice) 원" // 원
        self.priceStackView.addArrangedSubview(salesPriceLabel)
    }
    
    private func setupEventBedge() {
        guard let eventBedgeName = viewModel?.badge else {return}
        guard let bedgeColor = viewModel?.color else { return }
        guard let bedgeInfo = self.storeBedgeInfo(events: eventBedgeName, colors: bedgeColor) else {return}
            for event in bedgeInfo {
                let label = UILabel()
                label.text = " \(event.key) "
                label.backgroundColor = UIColor(hex: event.value )
                label.textColor = .white
                label.font = label.font.withSize(13)
                self.eventLabelStackView.addArrangedSubview(label)
            }
    }
    private func storeBedgeInfo(events: [String]?, colors: [String]?) -> [String:String]?
    {
        var eventBedges = [String: String]()
        guard let events = events else { return nil}
        if events.count > 0 {
            for index in 0 ... events.count - 1{
                let event = events[index]
                eventBedges[event] = colors?[index]
            }
        }
        return eventBedges
    }
}

extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }
        return nil
    }
}

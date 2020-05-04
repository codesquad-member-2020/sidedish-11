//
//  MenuDetailViewController.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/28.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import UIKit

class MenuDetailViewController: UIViewController {
    
    @IBOutlet weak var ImageStackView: UIStackView!
    @IBOutlet weak var menuTitleLabel: UILabel!
    @IBOutlet weak var menuDiscriptionLabel: UILabel!
    @IBOutlet weak var higherPriceLabel: UILabel!
    @IBOutlet weak var salesPriceLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var deliveryFeeLabel: UILabel!
    @IBOutlet weak var deliveryInfoLabel: UILabel!
    @IBOutlet weak var menuDescriptionImageStackView: UIStackView!
    @IBOutlet weak var topImageView: UIImageView!
    
    @IBOutlet weak var DescriptionImageStackView: UIStackView!
    
    private let useCase = SidedishUseCase()
    private var menuDetailInfo: DishDetail? {
        didSet {
            DispatchQueue.main.async {
                self.updateViews()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNotification()
        updateViews()
    }
    
    private func updateViews() {
        self.setupTopImage()
        self.setupImageStackView()
        self.setupDishDiscriptionLabel()
        self.setupPriceLabel()
        self.setupPointLabel()
        self.setupDeliveryLabel()
        self.setupDiscriptionImageStackView()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: MainViewController.CellSelectedNotification, object: nil)
    }
    
    
    private func setupNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(getDetailInfo), name: MainViewController.CellSelectedNotification, object: nil)
    }
    
    @objc private func getDetailInfo(noti: Notification){
        guard let detailInfo = noti.userInfo?["detailInfo"] as? DishDetailInfo else { return }
        self.menuDetailInfo = detailInfo.data
    }
    
    private func setupImageStackView(){
        guard let images = self.menuDetailInfo?.thumb_images else {return}
        for thumbnailImage in images {
            self.useCase.getImage(with: NetworkManager(), imageURL: thumbnailImage){ imageData in
                guard let imageData = imageData else {return}
                let image = UIImage(data: imageData)
                DispatchQueue.main.async {
                    let imageView = UIImageView(image: image)
                    self.ImageStackView.addArrangedSubview(imageView)
                }
            }
        }
    }
    
    private func setupTopImage() {
        guard let topImage = self.menuDetailInfo?.top_image else {return}
        self.useCase.getImage(with: NetworkManager(), imageURL: topImage){ imageData in
            guard let imageData = imageData else {return}
            let topImage = UIImage(data: imageData)
            DispatchQueue.main.async {
                self.topImageView.image = topImage
            }
        }
    }
    
    private func setupDishDiscriptionLabel(){
        guard let text = self.menuDetailInfo?.title else {return}
        guard let discriptionText = self.menuDetailInfo?.product_description else { return }
        self.menuTitleLabel.text = text
        self.menuDiscriptionLabel.text = discriptionText
    }
    
    private func setupPriceLabel(){
        var higherPrice: Int?
        var salesPrice : Int?
        if self.menuDetailInfo?.prices.count == 2 {
            higherPrice = self.menuDetailInfo?.prices[0]
            salesPrice = self.menuDetailInfo?.prices[1]
        } else {
            self.higherPriceLabel.isHidden = true
            salesPrice = self.menuDetailInfo?.prices[0]
        }
        guard let higherText = higherPrice else {return}
        guard let salesPriceLabel = salesPrice else {return}
        self.higherPriceLabel.text = "\(higherText)"
        self.salesPriceLabel.text = "\(salesPriceLabel)원"
    }
    private func setupPointLabel(){
        guard let text = self.menuDetailInfo?.point else {return}
        self.pointLabel.text =  "\(text) point"
    }
    
    private func setupDeliveryLabel() {
        guard let delivery_fee = self.menuDetailInfo?.delivery_fee else {return}
        guard let delivery_info = self.menuDetailInfo?.delivery_info else {return}
        self.deliveryFeeLabel.text = "\(delivery_fee)원"
        self.deliveryInfoLabel.text = delivery_info
    }
    
    private func setupDiscriptionImageStackView() {
        guard let descriptionImages = self.menuDetailInfo?.detail_section else {return}
        var imageToShow = UIImage()
        for descriptionImage in descriptionImages{
            self.useCase.getImage(with: NetworkManager(), imageURL: descriptionImage){ imageData in
                guard let imageData = imageData else {return}
                guard let image = UIImage(data: imageData) else {return}
                imageToShow = image
            }
            DispatchQueue.main.async {
                let imageView = UIImageView(image: imageToShow)
                self.DescriptionImageStackView.addArrangedSubview(imageView)
            }
        }
    }
}

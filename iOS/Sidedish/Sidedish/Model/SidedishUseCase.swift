//
//  SidedishUseCase.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/21.
//  Copyright © 2020 dev-Lena. All rights reserved.
//

import Foundation
import Toaster

class SidedishUseCase {
    
    enum ErrorMessage: String, CustomStringConvertible{
        var description: String{return self.rawValue}
        case InvalidURL = "유효하지 않은 URL입니다😭"
        case NotFound = "데이터를 가지고 오는데 실패했습니다😭"
        case DecodingError = "디코딩 실패했습니다😭"
        case Mistery = "알 수 없는 오류입니다😭"
    }
    
    static let SidedishUseCaseNotification = NSNotification.Name("NetworkManagerNotification")
    
    func getMainMenu(with manager: NetworkManagable) {
        try? manager.getResource(from: EndPoints.main) { (data, error) in
            guard let data = data else { return }
            self.decodeData(data: data)
        }
    }
    
    func getSideMenu(with manager: NetworkManagable) {
        try? manager.getResource(from: EndPoints.side) { (data, error) in
            guard let data = data else { return }
            self.decodeData(data: data)
        }
    }

    func getSoupMenu(with manager: NetworkManagable) {
        try? manager.getResource(from: EndPoints.soup) { (data, error) in
            guard let data = data else { return }
            self.decodeData(data: data)
        }
    }

    private func decodeData(data: Data){
        do {
            let sidedishes = try JSONDecoder().decode(SidedishInfo.self, from: data)
            self.sendNotification(allMenu: sidedishes)
        } catch {
            noticeError(error: error)
        }
    }
    
    private func decodeDetailData(data: Data,completed: @escaping (DishDetailInfo) -> ()){
        do {
            let detailInfo = try JSONDecoder().decode(DishDetailInfo.self, from: data)
            completed(detailInfo)
        } catch {
            noticeError(error: error)
        }
    }
    
    private func noticeError(error: Error) {
        switch error {
        case NetworkErrorCase.InvalidURL: Toast(text: ErrorMessage.InvalidURL.description).show()
        case NetworkErrorCase.NotFound: Toast(text: ErrorMessage.NotFound.description).show()
        case NetworkErrorCase.DecodingError: Toast(text: ErrorMessage.DecodingError.description).show()
        default:
            Toast(text: ErrorMessage.Mistery.description).show()
        }
    }
    
    func downloadSidedishImage(with manager: NetworkManagable, imageURL: String, completed: @escaping (Data, URL) -> ()) {
        try? manager.downloadResource(from: imageURL){ (data, imageURL, error) in
            guard let imageData = data else { return }
            guard let imageURL = imageURL else { return }
            completed(imageData, imageURL)
        }
    }
    
    func getImage(with manager: NetworkManagable, imageURL: String, completed: @escaping (Data?) -> ()){
        try? manager.getResource(from: imageURL){ data , error in
            completed(data)
        }
    }
    
    func getUserInfo(with manager: NetworkManagable, completed: @escaping (Data) -> ()) {
        try? manager.getResource(from: EndPoints.login) { (data, error) in
            guard let userInfo = data else { return }
            completed(userInfo)
        }
    }
    
    func getDishDetailInfo(with manager: NetworkManagable, dishHash: String ,completed: @escaping (DishDetailInfo) -> ()) {
        try? manager.getResource(from: EndPoints.detail+dishHash) { (data, error) in
            guard let detailData = data else { return }
            self.decodeDetailData(data: detailData){
                detailInfo in
                completed(detailInfo)
            }
        }
    }
    
    private func sendNotification(allMenu: SidedishInfo) {
        NotificationCenter.default.post(name: SidedishUseCase.SidedishUseCaseNotification, object: nil, userInfo: ["AllMenu":allMenu])
    }
}

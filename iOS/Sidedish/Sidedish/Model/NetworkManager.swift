//
//  NetworkManager.swift
//  Sidedish
//
//  Created by Keunna Lee on 2020/04/21.
//  Copyright © 2020 dev-Lena. All rights reserved.
//
//
import Foundation
import Alamofire

protocol NetworkManagable {
    func getSidedishResource(from: String, handler: @escaping (Data?, Error?) -> ()) throws
}

enum NetworkErrorCase : Error {
    case InvalidURL
    case NotFound
}

struct NetworkManager: NetworkManagable {
    
    func getSidedishResource(from: String, handler: @escaping (Data?, Error?) -> ()) throws {
        guard let url = URL(string: from) else {
            throw NetworkErrorCase.InvalidURL
        }
        AF.request(url,method: .get).responseData{ response in
            if case .success(let sidedishData) = response.result{
                handler(sidedishData, response.error)
                debugPrint(response.data)
                
            }
        }
    }
}

struct MainMockNetworkSuccessStub: NetworkManagable {
    func getSidedishResource(from: String, handler: @escaping (Data?, Error?) -> ()) throws {
        let data = """
        {
          "id": 1,
          "name": "메인반찬",
          "description": "한그릇 뚝딱 메인 요리",
          "url": "URL",
          "items": [
            {
              "detail_hash": "HBDEF",
              "image": "http://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg",
              "alt": "[미노리키친] 규동 250g",
              "delivery_type": [
                "새벽배송",
                "전국택배"
              ],
              "title": "[미노리키친] 규동 250g",
              "description": "일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥",
              "n_price": "6,500",
              "s_price": "7,000원",
              "badge": [
                "이벤트특가"
              ]
            },
            {
              "detail_hash": "HDF73",
              "image": "http://public.codesquad.kr/jk/storeapp/data/7674311a02ba7c88675f3186ddaeef9e.jpg",
              "alt": "[빅마마의밥친구] 아삭 고소한 연근고기조림 250g",
              "delivery_type": [
                "새벽배송",
                "전국택배"
              ],
              "title": "[빅마마의밥친구] 아삭 고소한 연근고기조림 250g",
              "description": "편식하는 아이도 좋아하는 건강한 연근조림",
              "s_price": "5,500원"
            },
            {
              "detail_hash": "HF778",
              "image": "http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg",
              "alt": "[소중한식사] 골뱅이무침 195g",
              "delivery_type": [
                "새벽배송",
                "전국택배"
              ],
              "title": "[소중한식사] 골뱅이무침 195g",
              "description": "매콤새콤달콤, 반찬으로도 안주로도 좋은",
              "n_price": "7,000",
              "s_price": "6,300원",
              "badge": [
                "이벤트특가"
              ]
            }
          ]
        }
        """.data(using: .utf8)
        handler(data,nil)
    }
}
struct SoupMockNetworkSuccessStub: NetworkManagable {
    func getSidedishResource(from: String, handler: @escaping (Data?, Error?) -> ()) throws {
        let data = """
        {
          "id": 2,
          "name": "국.찌개",
          "description": "김이 모락모락 국.찌개",
          "url": "URL",
          "items": [
            {
              "detail_hash": "HE2E9",
              "image": "http://public.codesquad.kr/jk/storeapp/data/6edbb16da52708e8533b85fbf743f882.jpg",
              "alt": "[국물닷컴] 치즈부대찌개 600g",
              "delivery_type": [
                "새벽배송",
                "전국택배"
              ],
              "title": "[국물닷컴] 치즈부대찌개 600g",
              "description": "안주용 부대찌개와는 달라 밥말아먹기 딱 좋은",
              "n_price": "5,500",
              "s_price": "4,300원",
              "badge": [
                "이벤트특가"
              ]
            },
            {
              "detail_hash": "HAA47",
              "image": "http://public.codesquad.kr/jk/storeapp/data/892f3e7f043bfa7dbbcd58f88eecac36.jpg",
              "alt": "[집밥의완성] 스키야키 1.5kg (2~3인분)",
              "delivery_type": [
                "새벽배송",
                "전국택배"
              ],
              "title": "[집밥의완성] 스키야키 1.5kg (2~3인분)",
              "description": "진한 풍미의 일본식 전골, 스키야키",
              "n_price": "19,800",
              "s_price": "10,000원",
              "badge": [
                "이벤트특가"
              ]
            },
            {
              "detail_hash": "H3254",
              "image": "http://public.codesquad.kr/jk/storeapp/data/ae571e13d18fd4f0f40d685d2c8fe8f1.jpg",
              "alt": "[새로미부산어묵] 프리미엄 어묵탕세트",
              "delivery_type": [
                "새벽배송",
                "전국택배"
              ],
              "title": "[새로미부산어묵] 프리미엄 어묵탕세트",
              "description": "밀가루 0% 프리미엄 어묵에 어묵스프까지 드려요!",
              "n_price": "18,000",
              "s_price": "14,400원",
              "badge": [
                "론칭특가",
                "이벤트특가"
              ]
            }
        ]
        }
        """.data(using: .utf8)
        handler(data,nil)
    }
}

struct SideMockNetworkSuccessStub: NetworkManagable {
    func getSidedishResource(from: String, handler: @escaping (Data?, Error?) -> ()) throws {
        guard let url = URL(string: from) else {
            throw NetworkErrorCase.InvalidURL
        }
        AF.request(url,method: .get).responseData{ response in
            if case .success(let sidedishData) = response.result{
                handler(sidedishData, response.error)
                debugPrint(response.data)
            }
        }
    }
}



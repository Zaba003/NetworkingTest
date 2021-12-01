//
//  Resource.swift
//  Berg Client
//
//  Created by Кирилл Заборский on 30.11.2021.
//

import Networking
import Arrow
import Foundation

// MARK: - Resource
struct Resource: Codable {
    var id: Int
    var article: String
    var brand: Brand
    var name: String
    var offers: [Offer]
    var sourceIdx: String
    
    init(id: Int? = nil,
         article: String? = nil,
         name: String? = nil,
         brand: Brand? = nil,
         offers: [Offer]? = nil,
         sourceIdx: String? = nil) {
        self.id = id ?? 0
        self.name = name ?? ""
        self.article = article ?? ""
        self.brand = Brand(id: 0, name: "")
        self.offers = offers ?? []
        self.sourceIdx = sourceIdx ?? ""
    }
}


//enum CodingKeys: String, CodingKey {
//    case id, article, brand, name, offers
//    case sourceIdx = "source_idx"
//}

extension Resource: NetworkingJSONDecodable {}

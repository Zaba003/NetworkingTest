//
//  Offer.swift
//  Berg Client
//
//  Created by Кирилл Заборский on 30.11.2021.
//

import Networking

// MARK: - Offer
struct Offer: Codable {
    let warehouse: Warehouse
    var price: Double
    var averagePeriod: Int
    var assuredPeriod: Int
    var reliability: Int
    var isTransit: Bool
    var quantity: Int
    var availableMore: Bool
    var multiplicationFactor: Int
    var deliveryType: Int
}

extension Offer: NetworkingJSONDecodable {}

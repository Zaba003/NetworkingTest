//
//  Warehouse.swift
//  Berg Client
//
//  Created by Кирилл Заборский on 30.11.2021.
//

import Networking
import Arrow

// MARK: - Warehouse
struct Warehouse: Codable {
    let id: Int
    let name: String
    let type: Int
}

extension Warehouse: NetworkingJSONDecodable {}

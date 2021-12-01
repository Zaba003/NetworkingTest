//
//  BergApi.swift
//  Berg Client
//
//  Created by Кирилл Заборский on 30.11.2021.
//

import Networking
import Arrow
import Foundation

// MARK: - Stock
struct Stock: Codable {
    var resources: [Resource] = [Resource]()
}

extension Stock: NetworkingJSONDecodable {}

//
//  Brand.swift
//  Berg Client
//
//  Created by Кирилл Заборский on 30.11.2021.
//

import Networking

// MARK: - Brand
struct Brand: Codable {
    let id: Int
    let name: String
}

extension Brand: NetworkingJSONDecodable {}

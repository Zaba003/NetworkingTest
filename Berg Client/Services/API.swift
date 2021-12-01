//
//  API.swift
//  Berg Client
//
//  Created by Кирилл Заборский on 01.12.2021.
//

import Networking
import Combine
import Network

class NetworkSetup {
    lazy var network: NetworkingClient = {
        //var network = NetworkingClient(baseURL: "https://jsonplaceholder.typicode.com")
        var network = NetworkingClient(baseURL: "https://api.berg.ru")
        network.timeout = 0
        network.logLevels = .debug
        network.headers["X-Berg-API-Key"] = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e730"
        return network
    }()
}

struct API: NetworkingService {
    var network = NetworkSetup().network
    
    func fetch(postWithId id: Int) -> AnyPublisher<Post, Error> {
        get("/posts/\(id)")
    }
    
    func fetchResource(resourceWithArticle article: String) -> AnyPublisher<[Resource], Error> {
        get("/ordering/get_stock.json?items[0][resource_article]=\(article)")
    }
}

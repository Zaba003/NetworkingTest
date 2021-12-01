//
//  StockListViewModel.swift
//  Berg Client
//
//  Created by Кирилл Заборский on 30.11.2021.
//

import Networking
import Combine

class ResourceViewModel: ObservableObject {
    
    private let api = API()
    
    @Published var resource: Resource = Resource()
    @Published var resources: [Resource] = []
    var cancellation: AnyCancellable?
    
    var cancellables: Set<AnyCancellable> = []
    
//    func fetchHeroes(resourceWithArticle article: String) {
//            cancellation = api.fetchResource(resourceWithArticle: article)
//            .mapError({ (error) -> Error in
//                print(error)
//                return error
//            })
//            .sink(receiveCompletion: { _ in }, receiveValue: { resources in
//                self.resources = resources
//                print(self.resources)
//            })
//        }
    
    func fetchResource(resourceWithArticle article: String, completion: @escaping (Error?) -> ()) {
        let promise = api.fetchResource(resourceWithArticle: article)
        PromiseHandler<Resource>.fulfillArray(promise, storedIn: &cancellables) { result in
            print("Проверяем \(result)")
            switch result {

            case .success(let item):
                print("Проверяем \(self.resource)")
                self.resource

            case .failure(let err):
                completion(err)
            }
        }
    }
}



//
//  StockListDetailModel.swift
//  Berg Client
//
//  Created by Кирилл Заборский on 30.11.2021.
//

//import Foundation
//import Combine
//import Networking
//
//class StockViewModel: ObservableObject {
//    
//    private let api = API()
//    
//    @Published var stock: Stock = Stock()
//    @Published var stocks: [Stock] = []
//    
//    var cancellables: Set<AnyCancellable> = []
//    
//    func fetchStock(stockWithArticle article: String, completion: @escaping (Error?) -> ()) {
//        let promise = api.fetchStock(stockWithArticle: article)
//        PromiseHandler<Stock>.fulfill(promise, storedIn: &cancellables) { result in
//            print(result)
//            switch result {
//            case .success(let result):
//             self.stock = result
//                print(self.stock)
//                completion(nil)
//            case .failure(let err):
//                completion(err)
//            }
//        }
//
//    }
//}

//
//  ContentViewModel.swift
//  NetworkingDemo
//
//  Created by Alex Nagy on 02.10.2021.
//

import SwiftUI
import Combine
import Networking

class ContentViewModel: ObservableObject {
    
    private let api = API()
    
    @Published var post: Post = Post()
    @Published var posts: [Post] = []
    
    var cancellables: Set<AnyCancellable> = []
    
    func fetch(postWithId id: Int, completion: @escaping (Error?) -> ()) {
        let promise = api.fetch(postWithId: id)
        PromiseHandler<Post>.fulfill(promise, storedIn: &cancellables) { result in
            print(result)
            switch result {
            case .success(let post):
                self.post = post
                completion(nil)
            case .failure(let err):
                completion(err)
            }
        }

    }
}


//
//  ContentView.swift
//  NetworkingDemo
//
//  Created by Alex Nagy on 02.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    @StateObject private var resourceViewModel = ResourceViewModel()
    
    var body: some View {
        ScrollView {
            Text(resourceViewModel.resource.name)
                .font(.title)
            Text(resourceViewModel.resource.article)
                .font(.body)
            Divider()
            Button {
                fetchResource()
            } label: {
                Text("Fetch Resource")
            }
//            Button {
//                fetchPost()
//            } label: {
//                Text("Fetch Post")
//            }
        }
        .navigationTitle("Networking")
    }
    
    func fetchPost() {
        viewModel.fetch(postWithId: 1) { err in
            if let err = err {
                print(err)
                return
            }
            print("Successfully fetched post: \(viewModel.post)")
        }
    }
    
    func fetchResource() {
        resourceViewModel.fetchHeroes(resourceWithArticle: "GDB1044")
            print("Successfully fetched resource: \(resourceViewModel.resources)")
        }
    }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

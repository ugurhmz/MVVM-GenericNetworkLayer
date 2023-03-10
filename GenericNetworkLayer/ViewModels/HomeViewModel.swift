//
//  HomeViewModel.swift
//  GenericNetworkLayer
//
//  Created by Ugur Hamzaoglu on 9.03.2023.
//

import Foundation


final class HomeViewModel: BaseViewModel {
   
    // GET POSTS
    func fetchPosts() {
        dataProvider.request(for: GetPostsRequest()) { [weak self] (result) in
            guard let self = self else { return }
          
            switch result {
            case .success(let response):
                if let res = response {
                    print(res)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    // CREATE POSTS
    func addPosts(userId: Int, title: String, desc: String) {
        dataProvider.request(for: AddPostsRequest(userId: userId, title: title, body: desc)) { [weak self] (result) in
            switch result {
            case .success(let response):
                if let res = response {
                    print(res)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}

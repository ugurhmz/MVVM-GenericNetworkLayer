//
//  AddPostsRequest.swift
//  GenericNetworkLayer
//
//  Created by Ugur Hamzaoglu on 10.03.2023.
//

import Foundation

public struct AddPostsRequest: APIDecodableResponseRequest {
    public typealias ResponseType = PostsResponseModel?
    
    public var path: String = "posts"
    public var method: RequestMethod = .post
    public var parameters: RequestParameters = [:]
    
    public init(userId: Int, title: String, body: String) {
        self.path = "posts"
        parameters["userId"] = userId
        parameters["title"] = title
        parameters["body"] = body
    }
    
}

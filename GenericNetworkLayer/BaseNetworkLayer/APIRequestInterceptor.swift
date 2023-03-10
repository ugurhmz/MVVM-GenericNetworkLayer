//
//  APIRequestInterceptor.swift
//  GenericNetworkLayer
//
//  Created by Ugur Hamzaoglu on 9.03.2023.
//

import Foundation
import Alamofire

public class APIRequestInterceptor: RequestInterceptor {
    
    public static let shared = APIRequestInterceptor()
    
    public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) {
        var urlRequest = urlRequest
//        let accessToken = KeychainSwift().get(Keychain.token)
//
//        if let accessToken = accessToken {
//            urlRequest.headers.add(name: "X-Fodamy-Token", value: accessToken)
//        }

        completion(.success(urlRequest))
    }
}

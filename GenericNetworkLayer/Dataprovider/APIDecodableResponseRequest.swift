//
//  APIDecodableResponseRequest.swift
//  GenericNetworkLayer
//
//  Created by Ugur Hamzaoglu on 9.03.2023.
//

import Foundation

public protocol APIDecodableResponseRequest: DecodableResponseRequest {}

// MARK: - RequestEncoding
public extension APIDecodableResponseRequest {
    var encoding: RequestEncoding {
        switch method {
        case .get:
            return .url
        default:
            return .json
        }
    }
}

// MARK: - url
public extension APIDecodableResponseRequest {
    var url: String {
        return "https://jsonplaceholder.typicode.com/" + path
    }
}

// MARK: - RequestParameters
public extension APIDecodableResponseRequest {
    var parameters: RequestParameters {
        return [:]
    }
}

// MARK: - RequestHeaders
public extension APIDecodableResponseRequest {
    var headers: RequestHeaders {
        return [:]
    }
}

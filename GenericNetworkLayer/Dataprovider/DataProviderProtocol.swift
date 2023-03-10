//
//  DataProviderProtocol.swift
//  GenericNetworkLayer
//
//  Created by Ugur Hamzaoglu on 9.03.2023.
//

import Foundation

public typealias DataProviderResult<T: Decodable> = ((Result<T, Error>) -> Void )

public protocol DataProviderProtocol {
    func request<T: DecodableResponseRequest>(for request: T,
                                              result: DataProviderResult<T.ResponseType>?)
}

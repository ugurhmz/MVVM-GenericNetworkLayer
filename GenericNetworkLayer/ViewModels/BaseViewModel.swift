//
//  BaseViewModel.swift
//  GenericNetworkLayer
//
//  Created by Ugur Hamzaoglu on 9.03.2023.
//

import Foundation

class BaseViewModel {
    let dataProvider: DataProviderProtocol
    
    init(dataProvider: DataProviderProtocol = apiDataProvider) {
        self.dataProvider = dataProvider
    }
}

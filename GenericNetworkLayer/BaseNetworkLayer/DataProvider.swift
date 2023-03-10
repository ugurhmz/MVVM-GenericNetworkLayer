//
//  DataProvider.swift
//  GenericNetworkLayer
//
//  Created by Ugur Hamzaoglu on 9.03.2023.
//

import Foundation
#if DEBUG
let apiDataProvider = APIDataProvider(interceptor: APIRequestInterceptor.shared,
                                      eventMonitors: [APILogger.shared])
#else
let apiDataProvider = APIDataProvider(interceptor: APIRequestInterceptor.shared,
                                      eventMonitors: [])
#endif

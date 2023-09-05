//
//  AppConfiguration.swift
//  PMUtilities
//
//  Created by Viacheslav Markov on 04.09.2023.
//

import Foundation

public enum EndPoint: String {
    case test
    case prod
    
    public static var current: EndPoint {
#if DEBUG
        return .test
#else
        return .prod
#endif
    }
    
    public var baseUrl: String {
        switch self {
        case .test:
            return BaseURL.baseURLString
        case.prod:
            return BaseURL.testURLString
        }
    }
}


//
//  UserDefaultsKeys.swift
//  PMUtilities
//
//  Created by Viacheslav Markov on 08.09.2023.
//

import Foundation

public enum UserDefaultsKeys: String {
    case isFirstTimeUser
    case isUserLogged
    
    public var key: String {
        switch self {
        case .isFirstTimeUser:
            return "isFirstTimeUser"
        case .isUserLogged:
            return "isUserLogged"
        }
    }
}

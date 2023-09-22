//
//  AttributedText.swift
//  PMUtilities
//
//  Created by Viacheslav Markov on 15.09.2023.
//

import Foundation

public enum AttributedTextType {
    case signUp
    
    public var text: String {
        switch self {
        case .signUp:
            return "Don't have an account?"
        }
    }
    
    public var attributedText: String {
        switch self {
        case .signUp:
            return "Sign Up!"
        }
    }
}

//
//  ButtonType.swift
//  PMUtilities
//
//  Created by Viacheslav Markov on 13.09.2023.
//

import SwiftUI

public enum ButtonType {
    case next
    case skip
    case goToLogin
    case login
    
    public var title: String {
        switch self {
        case .next:
            return "Next"
        case .skip:
            return "Skip"
        case .goToLogin:
            return "Go to login"
        case .login:
            return "Login"
        }
    }
    
    public var cornerRadius: CGFloat {
        switch self {
        case .next, .skip, .login, .goToLogin:
            return 8
        }
    }
    
    public var buttonHeight: CGFloat {
        switch self {
        case .next, .skip, .login, .goToLogin:
            return 56
        }
    }
    
    public var borderColor: Color? {
        switch self {
        case .skip:
            return Color(ColorType.customBlueColor.rawValue)
        case .next, .login, .goToLogin:
            return nil
        }
    }
    
    public var buttonTapped: ButtonType {
        return self
    }
    
    public var backgroundColor: Color {
        switch self {
        case .next, .login, .goToLogin:
            return Color(ColorType.customBlueColor.rawValue)
        case .skip:
            return Color(ColorType.baseColor.rawValue)
        }
    }
}

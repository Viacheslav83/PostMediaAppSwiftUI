//
//  TextFielType.swift
//  PMUtilities
//
//  Created by Viacheslav Markov on 15.09.2023.
//

import Foundation
import SwiftUI

public enum TextFieldType: Hashable {
    case email
    case newPassword
    case password
    
    public var placeholder: String {
        switch self {
        case .email:
            return "example@email.com"
        case .newPassword:
            return "New password"
            case .password:
            return "Password"
        }
    }
    
    public var borderColor: Color {
        switch self {
        case .email, .newPassword, .password:
            return Color(ColorType.customBlueColor.rawValue)
        }
    }
    
    public var errorBorderColor: Color {
        switch self {
        case .email, .newPassword, .password:
            return .red
        }
    }
    
    public var backgroundColor: Color {
        switch self {
        case .email, .newPassword, .password:
            return Color(ColorType.baseColor.rawValue)
        }
    }
    
    public var headerTitle: String {
        switch self {
        case .email:
            return "Email"
        case .newPassword:
            return "New password"
            case .password:
            return "Password"
        }
    }
    
    public var bottomErorrMessage: String {
        switch self {
        case .email:
            return "Please enter correct Email address."
        case .newPassword:
            return "Your New password doesn't match, correct it, please."
            case .password:
            return "Password must contains at least 8 character, with upper and lower case alphabet character."
        }
    }
}

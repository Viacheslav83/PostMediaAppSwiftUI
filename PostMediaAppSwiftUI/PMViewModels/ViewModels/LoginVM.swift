//
//  LoginVM.swift
//  PMViewModels
//
//  Created by Viacheslav Markov on 15.09.2023.
//

import SwiftUI
import PMUtilities
import PMModels

public protocol LoginVMProtocol: AnyObject {
    func getUIModels() -> LoginUIModel
}

public final class LoginVM: LoginVMProtocol {
    private var dataUI: LoginUIModel = {
        let emailType: TextFieldModel = .init(headerText: "Email",
                                              textFieldType: .email,
                                              fontType: .semiBold,
                                              color: .customBlueColor)
        
        let passwordType: TextFieldModel = .init(headerText: "Password",
                                              textFieldType: .password,
                                              fontType: .semiBold,
                                              color: .customBlueColor)
        let loginButtonType: TwoButtonModel = .init(topButtonType: .login)
        
        let model = LoginUIModel(
            backgroundColor: .baseColor,
            mainImageName: .defaultImage,
            emailType: emailType,
            passwordType: passwordType,
            loginButtonType: loginButtonType)
        return model
    }()
    
    public init() {}
    
    public func getUIModels() -> LoginUIModel {
        return dataUI
    }
}

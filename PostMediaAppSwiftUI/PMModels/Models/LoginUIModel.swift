//
//  LoginUIModel.swift
//  PMModels
//
//  Created by Viacheslav Markov on 15.09.2023.
//

import PMUtilities

public struct LoginUIModel {
    public let backgroundColor : ColorType
    public let mainImageName   : ImageNameType
    public let emailType       : TextFieldModel
    public let passwordType    : TextFieldModel
    public let loginButtonType : TwoButtonModel
    public let registerInfoTextType: AttributedTextType
    
    
    public init(
        backgroundColor : ColorType,
        mainImageName   : ImageNameType,
        emailType       : TextFieldModel,
        passwordType    : TextFieldModel,
        loginButtonType : TwoButtonModel,
        registerInfoTextType: AttributedTextType = .signUp
    ) {
        self.backgroundColor    = backgroundColor
        self.mainImageName      = mainImageName
        self.emailType          = emailType
        self.passwordType       = passwordType
        self.loginButtonType    = loginButtonType
        self.registerInfoTextType   = registerInfoTextType
    }
    
   public static var mockModel: LoginUIModel {
        let buttonType: TwoButtonModel = .init(topButtonType: .next)
        return .init(backgroundColor: .shadowColor,
                     mainImageName: .defaultImage,
                     emailType: .init(textFieldType: .email),
                     passwordType: .init(textFieldType: .password),
                     loginButtonType: buttonType,
                     registerInfoTextType: .signUp)
    }
}

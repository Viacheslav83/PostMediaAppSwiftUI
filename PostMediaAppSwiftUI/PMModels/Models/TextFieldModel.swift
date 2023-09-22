//
//  TextFieldModel.swift
//  PMModels
//
//  Created by Viacheslav Markov on 15.09.2023.
//

import Foundation
import PMUtilities

public struct TextFieldModel {
    public var headerText   : String?
    public var textFieldType: TextFieldType
    public var fontType     : MontserratFontType?
    public var color        : ColorType?
    
    public init(
        headerText   : String? = nil,
        textFieldType: TextFieldType,
        fontType     : MontserratFontType? = nil,
        color        : ColorType? = nil
    ) {
        self.headerText     = headerText
        self.textFieldType  = textFieldType
        self.fontType       = fontType
        self.color          = color
    }
    
    public static var mockModel: TextFieldModel {
        .init(headerText: "headerText", textFieldType: .email, fontType: .regular, color: .shadowColor)
    }
}

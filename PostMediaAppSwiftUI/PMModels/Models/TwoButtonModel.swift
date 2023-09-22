//
//  TwoButtonModel.swift
//  PMModels
//
//  Created by Viacheslav Markov on 15.09.2023.
//

import PMUtilities

public struct TwoButtonModel {
    let title       : String
    let cornerRadius: CGFloat?
    let image       : ImageNameType?
    let colorType   : ColorType
    let fontName    : MontserratFontType
    
    public init(
        title       : String,
        cornerRadius: CGFloat?,
        image       : ImageNameType? = nil,
        colorType   : ColorType,
        fontName    : MontserratFontType
    ) {
        self.title          = title
        self.cornerRadius   = cornerRadius
        self.image          = image
        self.colorType      = colorType
        self.fontName       = fontName
    }
}

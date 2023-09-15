//
//  FontType.swift
//  PMUtilities
//
//  Created by Viacheslav Markov on 15.09.2023.
//

import Foundation

public enum MontserratFontType {
    case black
    case extraBold
    case bold
    case semiBold
    case medium
    case regular
    
    public var fontName: String {
        switch self {
        case .black:
            return "MontserratAlternates-Black"
        case .bold:
            return "MontserratAlternates-Bold"
        case .extraBold:
            return "MontserratAlternates-ExtraBold"
        case .medium:
            return "MontserratAlternates-Medium"
        case .regular:
            return "MontserratAlternates-Regular"
        case .semiBold:
            return "MontserratAlternates-SemiBold"
        }
    }
}

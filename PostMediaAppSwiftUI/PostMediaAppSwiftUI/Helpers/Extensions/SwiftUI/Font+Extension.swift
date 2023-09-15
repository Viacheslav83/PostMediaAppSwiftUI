//
//  Font+Extension.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 15.09.2023.
//

import SwiftUI
import PMUtilities

extension Font {
    func font(_ fontName: MontserratFontType, size: CGFloat = 18) -> Font {
        return .custom(fontName.fontName, size: size)
    }
}

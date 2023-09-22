//
//  Color+Extension.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 20.09.2023.
//

import SwiftUI
import PMUtilities

extension Color {
    func color(_ colorType: ColorType, bundle: Bundle? = nil) -> Color {
        return Color(colorType.rawValue, bundle: bundle)
    }
}

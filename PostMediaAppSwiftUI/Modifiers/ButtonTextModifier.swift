//
//  ButtonTextModifier.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 13.09.2023.
//

import SwiftUI

struct ButtonTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
            .font(.title2)
            .fontWeight(.semibold)
    }
}

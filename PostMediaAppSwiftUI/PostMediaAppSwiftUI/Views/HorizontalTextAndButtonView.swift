//
//  HorizontalTextAndButtonView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 22.09.2023.
//

import SwiftUI
import PMUtilities

struct HorizontalTextAndButtonView: View {
    let type: AttributedTextType
    var didTapText: (() -> Void)?
    
    var body: some View {
        HStack {
            Text(type.text)
                .fontWeight(.regular)
            
            Text(type.attributedText)
                .underline()
                .fontWeight(.bold)
                .onTapGesture(perform: {
                    didTapText?()
                })
        }
    }
}

#Preview {
    HorizontalTextAndButtonView(type: .signUp)
}

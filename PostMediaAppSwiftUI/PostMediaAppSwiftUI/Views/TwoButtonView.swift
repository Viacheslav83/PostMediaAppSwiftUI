//
//  TwoButtonView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 12.09.2023.
//

import SwiftUI
import PMUtilities

struct TwoButtonView: View {
    //MARK: - Properties
    var topText: String
    var bottomText: String?
    
    var topColor: Color
    var bottomColor: Color?
    
    var didTapButton: ((_ type: ButtonType) -> ())?
    
    var body: some View {
        VStack {
            Button(action: {
                didTapButton?(.next)
            }, label: {
                Text(topText)
                    .modifier(ButtonTextModifier())
            })
            .padding()
            .frame(maxWidth: AppConstats.screenWidth / 2)
            .background(topColor)
            .cornerRadius(8)
            .frame(height: 56)
            .padding(.bottom, 16)
            
            Button(action: {
                didTapButton?(.skip)
            }, label: {
                Text(bottomText ?? "")
                    .modifier(ButtonTextModifier())
            })
            .padding()
            .background(bottomText != nil ? bottomColor : .clear)
            .frame(height: 56)
            .frame(maxWidth: AppConstats.screenWidth / 2)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(bottomText != nil ? .red : .clear, lineWidth: 2)
            )
        } //: VStack
    }
}

//MARK: - Preview
struct TwoButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TwoButtonView(topText: "topText", bottomText: "bottomText", topColor: .red)
    }
}

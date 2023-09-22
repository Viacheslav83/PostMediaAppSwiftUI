//
//  ButtonView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 21.09.2023.
//

import SwiftUI
//import PMModels
import PMUtilities

struct ButtonView: View {
    //MARK: - Properties
    var buttonType: ButtonType
    var didTapButton: ((_ type: ButtonType) -> ())?
    
    var body: some View {
            Button(action: {
                didTapButton?(buttonType.buttonTapped)
            }, label: {
                Text(buttonType.title)
                    .modifier(ButtonTextModifier())
            })
            .padding()
            .frame(maxWidth: AppConstats.screenWidth / 2)
            .background(buttonType.backgroundColor)
            .cornerRadius(buttonType.cornerRadius)
            .frame(height: buttonType.buttonHeight)
            .padding(.bottom, 16)
    }
}

#Preview {
    ButtonView(buttonType: ButtonType.next)
}

//
//  TwoButtonView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 12.09.2023.
//

import SwiftUI
import PMUtilities
import PMModels

struct TwoButtonView: View {
    //MARK: - Properties
    var buttonModel: TwoButtonModel
    var isClearButton: Bool = false
    var didTapButton: ((_ type: ButtonType) -> ())?
    
    var body: some View {
        VStack {
            ButtonView(buttonType: buttonModel.topButtonType) { type in
                didTapButton?(type)
            }
            
            if !buttonModel.isHideBottomButton {
                if let type = buttonModel.bottomButtonType {
                    ButtonView(buttonType: type) { type in
                        didTapButton?(type)
                        
                    }
                } else {
                    Button("", action: {})
                        .frame(height: 56)
                }
            }
        } //: VStack
    }
}

//MARK: - Preview
struct TwoButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TwoButtonView(buttonModel: TwoButtonModel.mockButtonModel)
    }
}

//
//  OnboardingItemView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 07.09.2023.
//

import SwiftUI
import PMModels
import PMUtilities

struct OnboardingItemView: View {
    //MARK: - Properties
    let model: OnboardingModel
    var didTapButton: ((_ type: ButtonType) -> ())?
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                Image(model.mainImage.rawValue)
                    .resizable()
                    .scaledToFit()
                    .frame(width: AppConstats.screenWidth * 0.7, height: AppConstats.screenWidth * 0.7)
                    .cornerRadius(AppConstats.screenWidth / 2)
                    .padding(.horizontal, AppConstats.leadingSpacing)
                
                VStack {
                    Text(model.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .lineLimit(2)
                        .padding(.bottom, 16)
                    
                    Text(model.info)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                    
                    TwoButtonView(topText: model.nextButtonText,
                                  bottomText: model.skipButtonText,
                                  topColor: .purple,
                                  bottomColor: .white) { type in
                        didTapButton?(type)
                    }
                }
            } //: VStack
            .padding(.horizontal, 30)
        } //: ZStack
    }
}

//MARK: - Preview
struct OnboardingItemView_Previews: PreviewProvider {
    static var previews: some View {
        let model = OnboardingModel.mockModel
        OnboardingItemView(model: model)
    }
}

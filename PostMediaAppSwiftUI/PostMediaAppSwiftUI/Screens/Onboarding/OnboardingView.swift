//
//  OnboardingView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 05.09.2023.
//

import SwiftUI
import PMUtilities
import PMViewModels
import PMModels

struct OnboardingView: View {
    @EnvironmentObject var coordinator: Coordinator<MapRouter>
    @State private var currentIndex: Int = 0
    @State private var currentModel: OnboardingModel?
    
    private let viewModel: OnboardingVMProtocol = OnboardingVM()
    
    var body: some View {
        VStack {
            VStack {
                cardContainerView
            }
        }
        .padding()
    }
    
    private func skipButtonTapped() {
        UserDefaults.standard.set(false, forKey: UserDefaultsKeys.isFirstTimeUser.key)
        sceneDelegate?.showScreens()
    }
    
    private var cardContainerView: some View {
        let view = VStack(spacing: 0) {
            TabView(selection: $currentIndex) {
                ForEach(viewModel.getOnboardingItems(), id: \.id) { model in
                    OnboardingItemView(model: model, isClearButton: currentIndex == 3 ) { buttonType in
                        didTapButton(buttonType: buttonType)
                    }
                    .padding(.bottom)
                    .tag(model.pageNumber)
                }
            }
            /// Comment next line if you need to display dots representing current index
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        return view
    }

    private func didTapButton(buttonType: ButtonType) {
        switch buttonType {
        case .next where currentIndex < 3:
            withAnimation(.easeOut(duration: 0.5)) {
                currentIndex += 1
            }
            break
        default:
            skipButtonTapped()
            break
        }
    }
}

//MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

//
//  OnboardingView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 05.09.2023.
//

import SwiftUI
import PMUtilities

struct OnboardingView: View {
    @EnvironmentObject var coordinator: Coordinator<MapRouter>
    @State private var scrollID: Int?
    
    private let viewModel: OnboardingViewModelProtocol = OnboardingViewModel()
    
    private func skipButtonTapped() {
        @AppStorage(UserDefaultsKeys.isFirstTimeUser.key) var isFirstTimeUser: Bool = false
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        sceneDelegate?.showScreens(at: windowScene!)
    }
    
    private func showLoginScreen() {
        coordinator.show(.login, animated: true)
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack() {
                    let items = viewModel.getOnboardingItems()
                    ForEach(items, id: \.id) { item in
                        OnboardingItemView()
                    }
                }
            }
            
            Button(action: {
                skipButtonTapped()
                showLoginScreen()
            }, label: {
                Text("Skip")
            })
        }
    }
}

//MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

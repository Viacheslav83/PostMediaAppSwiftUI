//
//  MapRouter.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 05.09.2023.
//

import SwiftUI
import PMUtilities

enum MapRouter: NavigationRouterProtocol, CaseIterable {
    case onboarding
    case login
    case register
    case main
    
    var transition: NavigationTranisitionStyle {
        switch self {
        case .onboarding:
            return .push
        case .login:
            return .push
        case .register:
            return .presentModally
        case .main:
            return .push
        }
    }
    
    @ViewBuilder
    func view() -> some View {
        switch self {
        case .onboarding:
            OnboardingView()
        case .login:
            LoginView()
        case .register:
            RegisterView()
        case .main:
            MainView()
            //        default: EmptyView()
        }
    }
}

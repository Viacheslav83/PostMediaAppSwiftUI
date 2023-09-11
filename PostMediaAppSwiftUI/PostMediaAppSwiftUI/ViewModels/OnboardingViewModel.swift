//
//  OnboardingViewModel.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 07.09.2023.
//

import SwiftUI
import PMModels

protocol OnboardingViewModelProtocol {
    func getOnboardingItems() -> [OnboardingModel]
}

final class OnboardingViewModel: OnboardingViewModelProtocol, ObservableObject {
    
    @Published private var items: [OnboardingModel] = [
        .init(),
        .init(),
        .init(),
        .init()
    ]
    
    init () {}
    
    func getOnboardingItems() -> [OnboardingModel] {
        return items
    }
}

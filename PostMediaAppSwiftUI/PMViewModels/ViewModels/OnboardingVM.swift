//
//  OnboardingViewModel.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 07.09.2023.
//

import SwiftUI
import PMModels
import PMUtilities

public protocol OnboardingVMProtocol {
    func getOnboardingItems() -> [OnboardingModel]
}

public final class OnboardingVM: OnboardingVMProtocol, ObservableObject {
    
    @Published private var items: [OnboardingModel] = [
        .init(mainImage: .onboardingOne,
              title: "Manage your media.",
              info: "You can easily control your media!",
              twoButtonModel: TwoButtonModel(topButtonType: .next, bottomButtonType: .skip),
              pageNumber: 0),
        .init(mainImage: .onboardingTwo,
              title: "Change your media.",
              info: "You can easily add some effects to you media!",
              twoButtonModel: TwoButtonModel(topButtonType: .next, bottomButtonType: .skip),
              pageNumber: 1),
        .init(mainImage: .onboardingThree,
              title: "Special effects.",
              info: "You can easily add some effects to you media!",
              twoButtonModel: TwoButtonModel(topButtonType: .next, bottomButtonType: .skip),
              pageNumber: 2),
        .init(mainImage: .onboardingFour,
              title: "Post",
              info: "Just post it!!!",
              twoButtonModel: TwoButtonModel(topButtonType: .goToLogin),
              pageNumber: 3),
    ]
    
    public init () {}
    
    public func getOnboardingItems() -> [OnboardingModel] {
        return items
    }
}

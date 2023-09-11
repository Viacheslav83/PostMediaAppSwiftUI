//
//  OnboardingModel.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 07.09.2023.
//

import Foundation

public struct OnboardingModel: Identifiable {
    public let id: String
    
    public init(id: String = UUID().uuidString) {
        self.id = id
    }
}

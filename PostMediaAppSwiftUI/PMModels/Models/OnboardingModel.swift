//
//  OnboardingModel.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 07.09.2023.
//

import PMUtilities

public struct OnboardingModel: Identifiable {
    public let id               : String
    public let mainImage        : ImageNameType
    public let title            : String
    public let info             : String
    public let nextButtonText   : String
    public let skipButtonText   : String?
    public let pageNumber: Int
    
    public init(
        id              : String = UUID().uuidString,
        mainImage       : ImageNameType,
        title           : String,
        info            : String,
        nextButtonText  : String = "Next",
        skipButtonText  : String? = "Skip",
        pageNumber      : Int = 1
    ) {
        self.id             = id
        self.mainImage      = mainImage
        self.title          = title
        self.info           = info
        self.nextButtonText = nextButtonText
        self.skipButtonText = skipButtonText
        self.pageNumber     = pageNumber
    }
    
    static public let mockModel: OnboardingModel = {
        return .init(id: "13", mainImage: .defaultImage, title: "Title", info: "Some large text", nextButtonText: "Knopka", skipButtonText: "Skkipo", pageNumber: 0)
    }()
}

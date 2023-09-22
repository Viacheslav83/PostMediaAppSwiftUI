//
//  TwoButtonModel.swift
//  PMModels
//
//  Created by Viacheslav Markov on 15.09.2023.
//

import PMUtilities

public struct TwoButtonModel {
    public let topButtonType   : ButtonType
    public let bottomButtonType: ButtonType?
    public let isHideBottomButton: Bool
    
    public init(
        topButtonType   : ButtonType,
        bottomButtonType: ButtonType? = nil,
        isHideBottomButton: Bool = false
    ) {
        self.topButtonType      = topButtonType
        self.bottomButtonType   = bottomButtonType
        self.isHideBottomButton = isHideBottomButton
    }
    
    public static var mockButtonModel: TwoButtonModel {
        return .init(topButtonType: .next, bottomButtonType: .skip)
    }
}

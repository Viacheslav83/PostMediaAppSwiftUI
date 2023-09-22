//
//  Image+Extension.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 20.09.2023.
//

import SwiftUI
import PMUtilities

extension Image {
    func image(_ imageNameType: ImageNameType, bundle: Bundle? = nil) -> Image {
        return .init(imageNameType.rawValue, bundle: bundle)
    }
}

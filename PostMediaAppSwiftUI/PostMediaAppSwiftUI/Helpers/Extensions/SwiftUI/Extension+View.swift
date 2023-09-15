//
//  Extension+View.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 11.09.2023.
//

import SwiftUI

extension View {
    var sceneDelegate: SceneDelegate?  {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        return windowScene?.delegate as? SceneDelegate
    }
    
    var appDelegate: AppDelegate? {
        UIApplication.shared.delegate as? AppDelegate
    }
}

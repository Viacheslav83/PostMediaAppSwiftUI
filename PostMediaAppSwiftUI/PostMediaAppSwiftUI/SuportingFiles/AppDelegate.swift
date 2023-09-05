//
//  AppDelegate.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 05.09.2023.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}

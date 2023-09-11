//
//  SceneDelegate.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 05.09.2023.
//

import SwiftUI
import PMUtilities

final class SceneDelegate: NSObject, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        showScreens()
    }
}

//private extension SceneDelegate {
extension SceneDelegate {
    func showScreens() {
        
        guard
            let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
//            let windowScene = (scene as? UIWindowScene)
        else { return }
        
        var coordinator: Coordinator<MapRouter>
        
        let router: MapRouter = getRouter()
        
        switch router {
        case .onboarding:
            coordinator = .init(startingRoute: .onboarding)
        case .main:
            coordinator = .init(startingRoute: .main)
        case .login:
            coordinator = .init(startingRoute: .login)
        default:
            return
        }
        
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = coordinator.getNavigationController()
        window?.makeKeyAndVisible()
        coordinator.start()
    }
    
    func getRouter() -> MapRouter {
        @State var isUserLogged = UserDefaults.standard.bool(forKey: UserDefaultsKeys.isUserLogged.key)
        @State var isFirstTimeUser = UserDefaults.standard.bool(forKey: UserDefaultsKeys.isFirstTimeUser.key)
        
        if isUserLogged {
            return MapRouter.main
        } else if isFirstTimeUser {
            return MapRouter.onboarding
        } else {
            return MapRouter.login
        }
    }
}

//
//  LoginView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 05.09.2023.
//

import SwiftUI
import PMUtilities
import PMViewModels

struct LoginView: View {
    let vm: LoginVMProtocol = LoginVMP()
    @EnvironmentObject var coordinator: Coordinator<MapRouter>
    
    private func loginTapped() {
        UserDefaults.standard.set(true, forKey: UserDefaultsKeys.isFirstTimeUser.key)
    }
    
    private func showRegisterScreen() {
        coordinator.show(.register, animated: true)
    }
    
    private func showMainScreen() {
        sceneDelegate?.showScreens()
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Login")
            
            Spacer()
            
            Button {
                loginTapped()
                showMainScreen()
            } label: {
                Text("Login")
            }
            
            Button {
                showRegisterScreen()
            } label: {
                Text("Go to register screen")
            }
        }
    }
}

//MARK: - Preview
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
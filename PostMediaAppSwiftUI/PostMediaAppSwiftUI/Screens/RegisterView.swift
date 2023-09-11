//
//  RegisterView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 05.09.2023.
//

import SwiftUI
import PMUtilities

struct RegisterView: View {
    @EnvironmentObject var coordinator: Coordinator<MapRouter>
    
    private func registerTapped() {
        UserDefaults.standard.set(true, forKey: UserDefaultsKeys.isUserLogged.key)
    }
    
    private func showMainScreen() {
        sceneDelegate?.showScreens()
    }
    
    private func showLoginScreen() {
        coordinator.show(.login, animated: true)
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Register")
            
            Spacer()
            
            Button {
                registerTapped()
                showMainScreen()
            } label: {
                Text("Register")
            }
        }
    }
}

//MARK: - Preview
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

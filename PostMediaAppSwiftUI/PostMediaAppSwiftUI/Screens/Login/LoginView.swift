//
//  LoginView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 05.09.2023.
//

import SwiftUI
import PMUtilities
import PMViewModels
import PMModels

struct LoginView: View {
    private let vm: LoginVMProtocol = LoginVM()
    private lazy var model: LoginUIModel = {
        return vm.getUIModels()
    }()
    @EnvironmentObject var coordinator: Coordinator<MapRouter>
    
    private func loginTapped() {
        UserDefaults.standard.set(true, forKey: UserDefaultsKeys.isFirstTimeUser.key)
        sceneDelegate?.showScreens()
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
            
            Image(vm.getUIModels().mainImageName.rawValue)
                .resizable()
                .scaledToFit()
                .frame(width: AppConstats.screenWidth / 2, height: AppConstats.screenWidth / 2)
                .cornerRadius(AppConstats.screenWidth / 4)
            
            TextHeaderAndTextFieldView(model: vm.getUIModels().emailType)
            
            TextHeaderAndTextFieldView(model: vm.getUIModels().passwordType)
            
            Spacer()
            
            TwoButtonView(buttonModel: vm.getUIModels().loginButtonType) { type in
                print("type")
                loginTapped()
            }
        }
        .padding(.horizontal, 16)
    }
}

//MARK: - Preview
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

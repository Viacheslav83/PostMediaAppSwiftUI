//
//  MainView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 05.09.2023.
//

import SwiftUI
import PMUtilities

struct MainView: View {
    @EnvironmentObject var coordinator: Coordinator<MapRouter>
    
    var body: some View {
        Text("Main")
            .task {
                UserDefaults.standard.set(false, forKey: UserDefaultsKeys.isUserLogged.key)
            }
    }
}

//MARK: - Preview
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

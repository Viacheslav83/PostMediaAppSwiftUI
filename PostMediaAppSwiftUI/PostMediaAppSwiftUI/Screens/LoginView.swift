//
//  LoginView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 05.09.2023.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var coordinator: Coordinator<MapRouter>
    
    var body: some View {
        Text("Login")
    }
}

//MARK: - Preview
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

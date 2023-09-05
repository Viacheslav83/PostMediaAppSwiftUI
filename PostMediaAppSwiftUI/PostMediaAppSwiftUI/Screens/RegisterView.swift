//
//  RegisterView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 05.09.2023.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var coordinator: Coordinator<MapRouter>
    
    var body: some View {
        Text("Register")
    }
}

//MARK: - Preview
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

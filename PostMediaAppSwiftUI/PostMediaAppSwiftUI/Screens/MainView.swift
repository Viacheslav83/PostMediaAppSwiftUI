//
//  MainView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 05.09.2023.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var coordinator: Coordinator<MapRouter>
    
    var body: some View {
        Text("Main")
    }
}

//MARK: - Preview
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

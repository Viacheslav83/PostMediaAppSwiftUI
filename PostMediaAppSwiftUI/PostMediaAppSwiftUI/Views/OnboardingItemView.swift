//
//  OnboardingItemView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 07.09.2023.
//

import SwiftUI

struct OnboardingItemView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("OnboardingItemView")
                .frame(width: UIScreen.main.bounds.width,
                       height: UIScreen.main.bounds.height,
                   alignment: .center)
            Spacer()  
        }
    }
}

struct OnboardingItemView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingItemView()
    }
}

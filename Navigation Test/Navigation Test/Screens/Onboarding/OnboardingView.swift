//
//  OnboardingView.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 29.03.23.
//

import SwiftUI

struct OnboardingView: View {
    @State private var isContinue = false
    
    @ObservedObject var viewModel: OnboardingModel
        
    var body: some View {
        VStack {
            Text("Hello, Onboarding!")
                .font(.title)
            Text("This is some text for onboarding screen...")
                .font(.title2)
            Text("Do you want to continue?")
                .font(.title2)
            Button("Yes!") {
                viewModel.showMain()
            }
            .font(.title)
            .padding()
            .navigationTitle("Onboarding Screen")
        }
        .navigationBarBackButtonHidden()
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingAssembly().build()
    }
}

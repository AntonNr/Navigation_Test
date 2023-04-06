//
//  ContentView.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 29.03.23.
//

import SwiftUI

struct StartView: View {    
    @ObservedObject var viewModel: StartModel
    
    var body: some View {
        VStack {
            Text("Hello!")
                .font(.title)
            Text("Let's get started?")
                .font(.title)
            if UserDefaults.standard.bool(forKey: "start") == false {
                Button("Start") {
                    viewModel.showOnboarding()
                    UserDefaults.standard.set(true, forKey: "start")
                }
                .font(.title)
                .padding()
            } else {
                Button("Start") {
                    viewModel.showMain()
                }
                .font(.title)
                .padding()
            }
        }
        .navigationTitle("Start Screen")
        .padding()
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartAssembly().build()
    }
}

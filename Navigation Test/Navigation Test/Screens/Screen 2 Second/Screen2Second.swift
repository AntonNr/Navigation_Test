//
//  Screen2Second.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 3.04.23.
//

import SwiftUI

struct Screen2Second: View {
    @ObservedObject var viewModel: Screen2SecondModel
    
    var body: some View {
        VStack{
            Text("Hello, Screen2Second!")
                .font(.title)
            
            Button("Next Screen") {
                viewModel.showNextScreen()
            }
            .font(.title)
            .padding()
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

struct Screen2Second_Previews: PreviewProvider {
    static var previews: some View {
        Screen2SecondAssembly().build()
    }
}

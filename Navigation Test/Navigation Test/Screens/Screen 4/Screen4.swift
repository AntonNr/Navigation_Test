//
//  Screen4.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 3.04.23.
//

import SwiftUI

struct Screen4: View {
    @ObservedObject var viewModel: Screen4Model
    
    var body: some View {
        Text("Hello, Screen4!")
            .font(.title)
        
        Button("Next Screen") {
            viewModel.showNextScreen()
        }
        .font(.title)
        .padding()
        .toolbar(.hidden, for: .navigationBar)
    }
}

struct Screen4_Previews: PreviewProvider {
    static var previews: some View {
        Screen4Assembly().build()
    }
}

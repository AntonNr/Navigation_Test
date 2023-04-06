//
//  Screen3.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 3.04.23.
//

import SwiftUI

struct Screen3: View {
    @ObservedObject var viewModel: Screen3Model
    
    var body: some View {
        Text("Hello, Screen3!")
            .font(.title)
        
        Button("Next Screen") {
            viewModel.showNextScreen()
        }
        .font(.title)
        .padding()
        .toolbar(.hidden, for: .navigationBar)
    }
}

struct Screen3_Previews: PreviewProvider {
    static var previews: some View {
        Screen3Assembly().build()
    }
}

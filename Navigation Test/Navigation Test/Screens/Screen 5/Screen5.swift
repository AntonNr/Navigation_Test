//
//  Screen5.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 3.04.23.
//

import SwiftUI

struct Screen5: View {
    @ObservedObject var viewModel: Screen5Model
    
    var body: some View {
        Text("Hello, Screen5!")
            .font(.title)
        
        Button("Back to Main Screen") {
            viewModel.showRootScreen()
        }
        .font(.title)
        .padding()
        .toolbar(.hidden, for: .navigationBar)
    }
}

struct Screen5_Previews: PreviewProvider {
    static var previews: some View {
        Screen5Assembly().build()
    }
}

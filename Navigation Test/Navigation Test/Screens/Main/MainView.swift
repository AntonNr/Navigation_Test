//
//  MainView.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 30.03.23.
//

import SwiftUI

struct MainView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: MainModel
    
    var countOfScreen: Int = 0
    
    var body: some View {
        VStack{
            List {
                Button("Other Screen", action: {viewModel.showOtherScreen()})
                Button("Screen 2", action: {viewModel.showScreen2()})
                Button("Screen 2 Second", action: {viewModel.showScreen2Second()})
                Button("Screen 3", action: {viewModel.showScreen3()})
                Button("Screen 4", action: {viewModel.showScreen4()})
                Button("Screen 5", action: {viewModel.showScreen5()})
            }
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainAssembly().build()
    }
}

//
//  MainTabBarView.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 3.04.23.
//

import SwiftUI

struct MainTabBarView: View {
    var body: some View {
        TabView {
            MainAssembly().build()
                .tabItem{
                    Label("Main", systemImage: "list.dash")
                }
            Screen2Assembly().build()
                .tabItem{
                    Label("Screen2", systemImage: "list.dash")
                }
            Screen2SecondAssembly().build()
                .tabItem{
                    Label("Screen2Second", systemImage: "list.dash")
                }
        }
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView()
    }
}

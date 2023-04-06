//
//  MainAssembly.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 30.03.23.
//

import Foundation

final class MainAssembly {
    func build() -> MainView {
        let router = Router.shared
        let viewModel = MainModel(router: router)
        return MainView(viewModel: viewModel)
    }
    
    func buildTabBarView() -> MainTabBarView {
        return MainTabBarView()
    }
}

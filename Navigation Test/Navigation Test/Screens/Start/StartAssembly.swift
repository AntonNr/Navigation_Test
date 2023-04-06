//
//  StartAssembly.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 29.03.23.
//

import Foundation

final class StartAssembly {
    func build() -> StartView {
        let router = Router.shared
        let viewModel = StartModel(router: router)
        return StartView(viewModel: viewModel)
    }
}

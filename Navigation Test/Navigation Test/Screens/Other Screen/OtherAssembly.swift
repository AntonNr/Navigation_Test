//
//  OtherAssembly.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 30.03.23.
//

import Foundation

final class OtherAssembly {
    func build() -> OtherView {
        let router = Router.shared
        let viewModel = OtherModel(router: router)
        return OtherView(viewModel: viewModel)
    }
    
    func showScreen() {
        let router = Router.shared
        router.addScreenToStack(screen: .otherScreen)
    }
}

//
//  Screen5Assembly.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 3.04.23.
//

import Foundation

final class Screen5Assembly {
    func build() -> Screen5 {
        let router = Router.shared
        let viewModel = Screen5Model(router: router)
        return Screen5(viewModel: viewModel)
    }
}

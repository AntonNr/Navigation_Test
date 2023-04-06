//
//  Screen4Assembly.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 3.04.23.
//

import Foundation

final class Screen4Assembly {
    func build() -> Screen4 {
        let router = Router.shared
        let viewModel = Screen4Model(router: router)
        return Screen4(viewModel: viewModel)
    }
}

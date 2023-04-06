//
//  Screen3Assembly.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 3.04.23.
//

import Foundation

final class Screen3Assembly {
    func build() -> Screen3 {
        let router = Router.shared
        let viewModel = Screen3Model(router: router)
        return Screen3(viewModel: viewModel)
    }
}

//
//  Screen2SecondAssembly.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 3.04.23.
//

import Foundation

final class Screen2SecondAssembly {
    func build() -> Screen2Second {
        let router = Router.shared
        let viewModel = Screen2SecondModel(router: router)
        return Screen2Second(viewModel: viewModel)
    }
}

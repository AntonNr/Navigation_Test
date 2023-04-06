//
//  OnboardingAssembly.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 30.03.23.
//

import Foundation

final class OnboardingAssembly {
    func build() -> OnboardingView {
        let router = Router.shared
        let viewModel = OnboardingModel(router: router)
        return OnboardingView(viewModel: viewModel)
    }
}

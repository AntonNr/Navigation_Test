//
//  StartModel.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 30.03.23.
//

import Foundation

final class StartModel: ObservableObject {
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func showOnboarding() {
        self.router.showOnboarding()
    }
    
    func showMain() {
        self.router.showMain()
    }
    
    func showTest() {
        self.router.showScreen2Second()
    }
}

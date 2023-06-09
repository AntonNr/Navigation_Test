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
    
    func showStart() {
        self.router.addScreenToStack(screen: .start)
    }
    
    func showOnboarding() {
        self.router.addScreenToStack(screen: .onboarding)
    }
    
    func showMain() {
        self.router.addScreenToStack(screen: .main)
    }
    
    func showTest() {
        self.router.addScreenToStack(screen: .screen2second)
    }
}

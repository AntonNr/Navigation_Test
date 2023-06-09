//
//  Screen5Model.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 3.04.23.
//

import Foundation

final class Screen5Model: ObservableObject {
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func showRootScreen() {
        if router.countOfScreens > 1 {
            self.router.backToMain(range: router.countOfScreens - 1)
            self.router.countOfScreens = 1
        } else {
            self.router.addScreenToStack(screen: .main)
        }
    }
}

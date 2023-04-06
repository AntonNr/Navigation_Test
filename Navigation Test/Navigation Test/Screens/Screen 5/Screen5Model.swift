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
        if router.countOfScreens == 4 {
            self.router.backToMain(range: 4)
            self.router.countOfScreens = 0
        } else if router.countOfScreens == 3 {
            self.router.backToMain(range: 3)
            self.router.countOfScreens = 0
        }
    }
}

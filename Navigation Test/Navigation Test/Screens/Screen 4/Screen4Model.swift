//
//  Screen4Model.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 3.04.23.
//

import Foundation

final class Screen4Model: ObservableObject {
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func showNextScreen() {
        self.router.showScreen5()
    }
}

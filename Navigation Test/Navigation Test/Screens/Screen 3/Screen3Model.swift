//
//  Screen3Model.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 3.04.23.
//

import Foundation

final class Screen3Model: ObservableObject {
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func showNextScreen() {
        self.router.addScreenToStack(screen: .screen4)
    }
}

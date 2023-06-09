//
//  Screen2Model.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 3.04.23.
//

import Foundation

final class Screen2SecondModel: ObservableObject {
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func showNextScreen() {
        self.router.addScreenToStack(screen: .screen3)
    }
}

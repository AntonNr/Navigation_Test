//
//  MainModel.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 30.03.23.
//

import Foundation
import SwiftUI

final class MainModel: ObservableObject {    
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func showOtherScreen() {
        self.router.addScreenToStack(screen: .otherScreen)
    }
    
    func showScreen2() {
        self.router.addScreenToStack(screen: .screen2)
    }
    
    func showScreen2Second() {
        self.router.addScreenToStack(screen: .screen2second)
    }
    
    func showScreen3() {
        self.router.addScreenToStack(screen: .screen3)
    }
    
    func showScreen4() {
        self.router.addScreenToStack(screen: .screen4)
    }
    
    func showScreen5() {
        self.router.addScreenToStack(screen: .screen5)
    }
}

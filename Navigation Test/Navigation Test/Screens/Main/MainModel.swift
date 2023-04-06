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
        self.router.showOtherScreen()
    }
    
    func showScreen2() {
        self.router.showScreen2()
    }
    
    func showScreen2Second() {
        self.router.showScreen2Second()
    }
    
    func showScreen3() {
        self.router.showScreen3()
    }
    
    func showScreen4() {
        self.router.showScreen4()
    }
    
    func showScreen5() {
        self.router.showScreen5()
    }
}

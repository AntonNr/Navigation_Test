//
//  Router.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 29.03.23.
//

import SwiftUI

final class Router: ObservableObject {
    @Published var path = [Route]()

    static let shared = Router()
    
    var countOfScreens = 0
    
    func showOnboarding() {
        path.append(.onboarding)
    }
    
    func showMain() {
        path.append(.main)
        countOfScreens += 1
    }
    
    func showOtherScreen() {
        path.append(.otherScreen)
    }
    
    func showScreen2() {
        path.append(.screen2)
    }
    
    func showScreen2Second() {
        path.append(.screen2second)
        countOfScreens += 1
    }
    
    func showScreen3() {
        path.append(.screen3)
        countOfScreens += 1
    }
    
    func showScreen4() {
        path.append(.screen4)
        countOfScreens += 1
    }
    
    func showScreen5() {
        path.append(.screen5)
        countOfScreens += 1
    }
    
    func backToMain(range: Int) {
        path.removeLast(range)
    }
    
    func backToRoot() {
        path.removeAll()
    }
    
    func back() {
        path.removeLast()
    }
}

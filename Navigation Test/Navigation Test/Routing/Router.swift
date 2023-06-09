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
    
    func addScreenToStack(screen: Route) {
        switch screen {
        case .start:
            path.append(.start)
            countOfScreens += 1
        case .onboarding:
            path.append(.onboarding)
            countOfScreens += 1
        case .main:
            path.append(.main)
            countOfScreens += 1
        case .otherScreen:
            path.append(.otherScreen)
        case .screen2:
            path.append(.screen2)
        case .screen2second:
            path.append(.screen2second)
            countOfScreens += 1
        case .screen3:
            path.append(.screen3)
            countOfScreens += 1
        case .screen4:
            path.append(.screen4)
            countOfScreens += 1
        case .screen5:
            path.append(.screen5)
            countOfScreens += 1
        }
    }
    
    func backToMain(range: Int) {
        path.removeLast(range)
    }
    
    func backToRoot() {
        path.removeAll()
    }
}

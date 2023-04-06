//
//  Navigation_TestApp.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 29.03.23.
//

import SwiftUI

@main
struct Navigation_TestApp: App {
    @ObservedObject var router = Router.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                StartAssembly().build()
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .onboarding:
                            OnboardingAssembly().build()
                        case .main:
                            MainAssembly().buildTabBarView()
                        case .otherScreen:
                            OtherAssembly().build()
                        case .screen2:
                            Screen2Assembly().build()
                        case .screen2second:
                            Screen2SecondAssembly().build()
                        case .screen3:
                            Screen3Assembly().build()
                        case .screen4:
                            Screen4Assembly().build()
                        case .screen5:
                            Screen5Assembly().build()
                        }
                    }
            }
        }
    }
}

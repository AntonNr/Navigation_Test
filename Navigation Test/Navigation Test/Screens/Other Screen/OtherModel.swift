//
//  OtherModel.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 30.03.23.
//

import Foundation

final class OtherModel: ObservableObject {
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
}

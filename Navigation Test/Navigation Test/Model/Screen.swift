//
//  Screen.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 10.04.23.
//

import Foundation

struct Screen: Identifiable {
    let id = UUID()
    let title: String
    let destination: () -> Void
}

//
//  OtherView.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 30.03.23.
//

import SwiftUI

struct OtherView: View {
    @ObservedObject var viewModel: OtherModel
    
    var body: some View {
        Text("Other Screen")
            .font(.title)
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherAssembly().build()
    }
}

//
//  MainView.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 30.03.23.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel: MainModel
    @State private var screens: Array<AnyView> = [
        AnyView(OtherAssembly().build()),
        AnyView(Screen2Assembly().build()),
        AnyView(Screen2SecondAssembly().build()),
        AnyView(Screen3Assembly().build()),
        AnyView(Screen4Assembly().build()),
        AnyView(Screen5Assembly().build())
    ]
    
    var body: some View {
        VStack {
                ForEach(0..<screens.count, id: \.self) { index in
                    NavigationLink(destination: screens[index], label: {
                        Text("Screen \(index)")
                            .font(.largeTitle)
                    })
                }
        }
        .toolbar(.hidden, for: .navigationBar)
        .gesture(
            DragGesture()
                .onEnded { value in
                    if value.translation.height < 0 {
                        let screenSaver = screens.removeFirst()
                        screens.append(screenSaver)
                    }
                    if value.translation.height > 0 {
                        let screenSaver = screens.removeLast()
                        screens.insert(screenSaver, at: 0)
                    }
                }
        )
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainAssembly().build()
    }
}

extension View {
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = Double(total - position)
        return self.offset (x: 0, y: offset * 50)
    }
}

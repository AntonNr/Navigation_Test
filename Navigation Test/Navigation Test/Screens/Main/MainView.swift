//
//  MainView.swift
//  Navigation Test
//
//  Created by Антон Нарижный on 30.03.23.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel: MainModel
    @State private var screens: Array<Screen> = [
        Screen(screen: AnyView(OtherAssembly().build()), nameOfScreen: "Other Screen"),
        Screen(screen: AnyView(Screen2Assembly().build()), nameOfScreen: "Screen 2"),
        Screen(screen: AnyView(Screen2SecondAssembly().build()), nameOfScreen: "Screen 2 Second"),
        Screen(screen: AnyView(Screen3Assembly().build()), nameOfScreen: "Screen 3"),
        Screen(screen: AnyView(Screen4Assembly().build()), nameOfScreen: "Screen 4"),
        Screen(screen: AnyView(Screen5Assembly().build()), nameOfScreen: "Screen 5")
    ]
    
    var body: some View {
        VStack {
            ForEach(0..<screens.count, id: \.self) { index in
                NavigationLink(destination: screens[index].screen, label: {
                    Text("\(screens[index].nameOfScreen)")
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

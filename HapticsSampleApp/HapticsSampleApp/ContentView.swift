//
//  ContentView.swift
//  HapticsSampleApp
//
//  Created by HiroakiSaito on 2023/11/03.
//

import SwiftUI

struct ContentView: View {
    enum Path: String {
        case basic
        case amount
        case slider
        case newBasic
        case custom
    }

    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: BasicHapticsView()) {
                    Text(Path.basic.rawValue)
                }
                NavigationLink(destination: HapticAmountView()) {
                    Text(Path.amount.rawValue)
                }
                NavigationLink(destination: SliderHapticView()) {
                    Text(Path.slider.rawValue)
                }
                NavigationLink(destination: NewBasicHapticsView()) {
                    Text(Path.newBasic.rawValue)
                }
                NavigationLink(destination: CustomHapticsView()) {
                    Text(Path.custom.rawValue)
                }
                .navigationTitle("TOP")
            }
        }
    }
}

#Preview {
    ContentView()
}

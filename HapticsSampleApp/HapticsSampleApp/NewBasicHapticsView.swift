//
//  NewBasicHaptics.swift
//  HapticsSampleApp
//
//  Created by HiroakiSaito on 2023/11/11.
//

import SwiftUI

struct NewBasicHaptics: View {
    @State private var start = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("sample") {
                start.toggle()
            }
        }
        .sensoryFeedback(.start, trigger: start)
        .sensoryFeedback(.impact(flexibility: .soft), trigger: start)
        .padding()
    }
}

#Preview {
    NewBasicHaptics()
}

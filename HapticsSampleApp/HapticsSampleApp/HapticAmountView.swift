//
//  HapticAmountView.swift
//  HapticsSampleApp
//
//  Created by HiroakiSaito on 2023/11/11.
//

import SwiftUI

struct HapticAmountView: View {
    @State private var feedBackGenerator: UIImpactFeedbackGenerator = UIImpactFeedbackGenerator()

    var body: some View {
        Button("impact 1.0") {
            feedBackGenerator.impactOccurred(intensity: 1.0)
        }
        .buttonStyle(.bordered)
        .padding()

        Button("impact 0.8") {
            feedBackGenerator.impactOccurred(intensity: 0.8)
        }
        .buttonStyle(.bordered)
        .padding()

        Button("impact 0.6") {
            feedBackGenerator.impactOccurred(intensity: 0.6)
        }
        .buttonStyle(.bordered)
        .padding()

        Button("impact 0.4") {
            feedBackGenerator.impactOccurred(intensity: 0.4)
        }
        .buttonStyle(.bordered)
        .padding()

        Button("impact 0.2") {
            feedBackGenerator.impactOccurred(intensity: 0.2)
        }
        .buttonStyle(.bordered)
        .padding()

    }
}

#Preview {
    HapticAmountView()
}

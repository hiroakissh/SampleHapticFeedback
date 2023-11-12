//
//  BasicHapticsView.swift
//  HapticsSampleApp
//
//  Created by HiroakiSaito on 2023/11/11.
//

import SwiftUI

struct BasicHapticsView: View {
    @State private var feedBack: UINotificationFeedbackGenerator = UINotificationFeedbackGenerator()
    @State private var heavy: UIImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    @State private var medium: UIImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
    @State private var light: UIImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .light)
    @State private var rigid: UIImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .rigid)
    @State private var soft: UIImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .soft)

    var body: some View {
        Button("success") {
            feedBack.notificationOccurred(.success)
        }
        .buttonStyle(.bordered)
        .padding()

        Button("warning") {
            feedBack.notificationOccurred(.warning)
        }
        .buttonStyle(.bordered)
        .padding()

        Button("error") {
            feedBack.notificationOccurred(.error)
        }
        .buttonStyle(.bordered)
        .padding()

        Button("heavy") {
            heavy.impactOccurred(intensity: 1.0)
        }
        .buttonStyle(.bordered)
        .padding()

        Button("medium") {
            medium.impactOccurred(intensity: 1.0)
        }
        .buttonStyle(.bordered)
        .padding()

        Button("light") {
            light.impactOccurred(intensity: 1.0)
        }
        .buttonStyle(.bordered)
        .padding()

        Button("rigid") {
            rigid.impactOccurred(intensity: 1.0)
        }
        .buttonStyle(.bordered)
        .padding()

        Button("soft") {
            soft.impactOccurred(intensity: 1.0)
        }
        .buttonStyle(.bordered)
        .padding()

    }
}

#Preview {
    BasicHapticsView()
}

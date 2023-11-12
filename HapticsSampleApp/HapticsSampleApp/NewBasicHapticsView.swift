//
//  NewBasicHapticsView.swift
//  HapticsSampleApp
//
//  Created by HiroakiSaito on 2023/11/11.
//

import SwiftUI

struct NewBasicHapticsView: View {
    @State private var success = false
    @State private var warning = false
    @State private var error = false
    @State private var impactSoft = false
    @State private var solidSoft = false
    @State private var rigidSoft = false

    var body: some View {
        VStack {
            Button("success Haptics") {
                success.toggle()
            }
            .buttonStyle(.bordered)
            .padding()

            Button("warning Haptics") {
                warning.toggle()
            }
            .buttonStyle(.bordered)
            .padding()

            Button("error Haptics") {
                error.toggle()
            }
            .buttonStyle(.bordered)
            .padding()

            Button("impact Soft Haptics") {
                impactSoft.toggle()
            }
            .buttonStyle(.bordered)
            .padding()

            Button("impact Solid Haptics") {
                impactSoft.toggle()
            }
            .buttonStyle(.bordered)
            .padding()

            Button("impact Rigid Haptics") {
                impactSoft.toggle()
            }
            .buttonStyle(.bordered)
            .padding()


        }
        .sensoryFeedback(.success, trigger: success)
        .sensoryFeedback(.warning, trigger: warning)
        .sensoryFeedback(.error, trigger: error)
        .sensoryFeedback(.impact(flexibility: .soft), trigger: impactSoft)
        .sensoryFeedback(.impact(flexibility: .solid), trigger: solidSoft)
        .sensoryFeedback(.impact(flexibility: .rigid), trigger: rigidSoft)
    }
}

#Preview {
    NewBasicHapticsView()
}

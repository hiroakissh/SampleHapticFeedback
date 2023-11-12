//
//  SliderHapticView.swift
//  HapticsSampleApp
//
//  Created by HiroakiSaito on 2023/11/11.
//

import SwiftUI

struct SliderHapticView: View {
    @State private var val1: Double = 0.0
    @State private var val2: Double = 0.0

    @State private var feedBackGenerator: UISelectionFeedbackGenerator = UISelectionFeedbackGenerator()

    var body: some View {
        VStack {
            Text("No action")
            Slider(value: $val1, in: 0...100)
                .padding(.horizontal)
        }

        VStack {
            Text("Action")
            Slider(value: $val2, in: 0...100) { _ in
                feedBackGenerator.selectionChanged()
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    SliderHapticView()
}

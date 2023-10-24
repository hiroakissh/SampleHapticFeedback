//
//  ThirdSlide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/24.
//

import SwiftUI
import SlideKit

struct ThirdSlide: Slide {

    enum SlidePhasedState: Int, PhasedState {
        case initial, second
    }

    @Phase var phasedStateStore
    @State private var isAnimating = false

    var body: some View {
        HeaderSlide("今日私が話すこと") { }
        if phasedStateStore.when(.second) {
            VStack(alignment: .center) {
                Text("HapticFeedback ~ 触覚フィードバック ~")
                    .font(.system(size: 90))
                    .padding()
                    .modifier(Shake(animatableData: CGFloat(isAnimating ? 1 : 0)))
                    .onAppear {
                        withAnimation(Animation.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.5)) {
                            isAnimating.toggle()
                        }
                    }
            }
        }
    }
}

struct Shake: GeometryEffect {
    var amount: CGFloat = 10
    var shakesPerUnit = 3
    var animatableData: CGFloat

    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(CGAffineTransform(translationX: amount * sin(animatableData * .pi * CGFloat(shakesPerUnit)), y: 0))
    }
}

#Preview {
    SlidePreview {
        ThirdSlide()
    }
}

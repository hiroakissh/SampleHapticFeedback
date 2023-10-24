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

    var body: some View {
        HeaderSlide("今日私が話すこと") { }
        if phasedStateStore.when(.second) {
            VStack(alignment: .center) {
                Text("HapticFeedback ~ 触覚フィードバック ~")
                    .font(.system(size: 90))
            }
        }
    }
}

#Preview {
    SlidePreview {
        ThirdSlide()
    }
}

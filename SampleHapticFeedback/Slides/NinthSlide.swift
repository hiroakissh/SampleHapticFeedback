//
//  NinthSlide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/25.
//

import SwiftUI
import SlideKit

struct NinthSlide: Slide {

    enum SlidePhasedState: Int, PhasedState {
        case initial, next
    }

    @Phase var phasedStateStore

    var body: some View {
        HeaderSlide("自己紹介") {
            Item("Please tap the right half of this window") {
                Item("You can go to the next state")
                Item("You can also use \"return\" or \"→\"")
            }
            if phasedStateStore.when(.next) {
                Item("Please tap the left half of this window") {
                    Item("You can back the previous slide")
                    Item("You can also use \"←\"")
                }
            }
        }
    }
}

#Preview {
    SlidePreview {
        NinthSlide()
    }
}


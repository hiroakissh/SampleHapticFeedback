//
//  ForthSlide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/24.
//

import SwiftUI
import WebKit
import SlideKit

struct ForthSlide: Slide, View {

    enum SlidePhasedState: Int, PhasedState {
        case initial, next
    }

    @Phase var phasedStateStore

    var body: some View {
        HeaderSlide("HapticFeedbackってなんだろ？") {
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
        ForthSlide()
    }
}

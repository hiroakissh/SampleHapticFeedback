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
        HeaderSlide("終わり") {
            Text("ご清聴ありがとうございました🙇")
                .frame(maxWidth: .infinity,maxHeight: .infinity , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .font(.system(size: 90))
        }
    }
}

#Preview {
    SlidePreview {
        NinthSlide()
    }
}


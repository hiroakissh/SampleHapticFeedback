//
//  TenthSlide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/25.
//

import SwiftUI
import SlideKit

struct TenthSlide: Slide {

    enum SlidePhasedState: Int, PhasedState {
        case initial, next
    }

    @Phase var phasedStateStore

    var body: some View {
        HeaderSlide("謝辞") {
            Text("渡部さん入社前から大変お世話になりました🙇\n新天地でのご活躍をお祈りします🙏")
                .frame(maxWidth: .infinity,maxHeight: .infinity , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .font(.system(size: 90))
        }
    }
}

#Preview {
    SlidePreview {
        TenthSlide()
    }
}


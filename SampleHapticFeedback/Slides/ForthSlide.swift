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
            Item("触覚フィードバックとは") {
                Item("デバイスやシステムからユーザの手や指に対して、振動や圧力などの物理的な刺激を与えることで、操作の結果や状態を伝える技術のことです")
            }
            if phasedStateStore.when(.next) {
                Item("主に使用されている例") {
                    Item("iPhoneの純正機能") {
                    Item("Apple Watch")
                    Item("Air Pods")
                    Item("Mac")
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

//
//  Fifth-1Slide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/11/13.
//

import SwiftUI
import SlideKit

struct Fifth_1Slide: Slide {
    enum SlidePhasedState: Int, PhasedState {
        case initial, second, third, forth, fifth
    }

    @Phase var phasedStateStore

    var body: some View {
        HeaderSlide("ベストプラクティスの要点") {
            Item("ユーザは特定の触覚パターンと特定の体験を結ぶことができるようにする")
            Item("アプリの他のフィードバックを補完する形で使用する") {
                Item("視覚、聴覚、触覚によるもので一貫性のある体験を")
            }
            Item("触覚フィードバックは多用しすぎないこと") {
                Item("ユーザが意識しないくらいでありながら、無効にすると物足りなく感じられる程度が最適な体験です。")
            }
            Item("触覚フィードバックはオプションにする(オフにできるようにする)")
            Item("触覚フィードバックによって、別の機能に影響がある場合がある") {
                Item("カメラ、ジャイロスコープ、マイク etc...")
            }
        }
    }
}

#Preview {
    Fifth_1Slide()
}

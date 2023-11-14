//
//  Fifth-3Slide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/11/14.
//

import SwiftUI
import SlideKit

struct Fifth_3Slide: Slide {
    var body: some View {
        HeaderSlide("設計の要点") {
            Item("触覚フィードバックは少ないほど効果的")
            Item("振動が大きすぎるとユーザにとって害になる")
            Item("触覚フィードバックは多用しすぎないこと")
            Item("うるさい振動よりも、豊かでクリアな触覚を優先")
            Item("使用頻度と重要性")
            Item("一貫性を保つ")
            Item("視覚、音声、触覚の効果は共同設計することを強くおすすめ")
        }
    }
}

#Preview {
    Fifth_3Slide()
}

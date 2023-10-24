//
//  SecondSlide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/23.
//

import SwiftUI
import SlideKit

struct SecondSlide: Slide {

    enum SlidePhasedState: Int, PhasedState {
        case initial, next
    }

    @Phase var phasedStateStore

    var body: some View {
        HeaderSlide("自己紹介") {
            Text("名前：齋藤　広明")
            Text("年齢：25 (最近アラサーになりました。よろしくお願いします 🙇)")
            Text("配属案件")
            Item("ニコス")
                .padding(.leading)
            Item("ZIPAIR")
                .padding(.leading)
            if phasedStateStore.when(.next) {
                HStack {
                    VStack {
                        HStack {
                            Text("最近ハマってること")
                            Spacer()
                        }
                        HStack {
                            Item("運動")
                            Spacer()
                        }
                        HStack {
                            Item("北千住の居酒屋(お気に入りは千住の永見)")
                            Spacer()
                        }
                    }
                    Spacer()
                    Image(.sennzyuyaki)
                }
            }
        }
        Image("")
    }
}

#Preview {
    SlidePreview {
        SecondSlide()
    }
}


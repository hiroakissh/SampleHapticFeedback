//
//  InitialSlide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/23.
//

import SwiftUI
import SlideKit

struct InitialSlide: Slide {

    @Phase var phasedStateStore

    var body: some View {
        HeaderSlide("HapticFeedbackの入門") {
            Text("iOSエンジニア")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.top)
            Text("齋藤 広明")
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding(.init(top: 400, leading: 0, bottom: 0, trailing: 0))
        .headerSlideStyle(InitialHeaderStyle())
    }
}

struct InitialHeaderStyle: HeaderSlideStyle {

    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.header
                .font(.system(size: 120))
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)
                .background {
                    Color.accentColor
                }
            VStack(alignment: .leading, spacing: 48) {
                configuration.content
                    .font(.system(size: 48))
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    SlidePreview {
        InitialSlide()
    }
}

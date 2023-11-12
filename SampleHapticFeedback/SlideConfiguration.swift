//
//  SlideConfiguration.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/23.
//

import SwiftUI
import SlideKit

struct SlideConfiguration {

    /// Edit the slide size.
    let size = SlideSize.standard16_9

    ///  Add your slides into the trailing closure.
    let slideIndexController = SlideIndexController {
        InitialSlide()
        SecondSlide()
        ThirdSlide()
        ForthSlide()
        FifthSlide()
        Fifth_1Slide()
        SixthSlide()
        SeventhSlide()
        EighthSlide()
        NinthSlide()
        TenthSlide()
        CustomHeaderStyleSlide()
    }

    let theme = CustomSlideTheme()
}

struct CustomSlideTheme: SlideTheme {
    let indexStyle = CustomIndexStyle()
}

struct CustomIndexStyle: IndexStyle {
    func makeBody(configuration: Configuration) -> some View {
        Text("\(configuration.slideIndexController.currentIndex + 1) / \(configuration.slideIndexController.slides.count)")
            .foregroundColor(.gray)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            .font(.system(size: 30))
            .padding()
    }
}

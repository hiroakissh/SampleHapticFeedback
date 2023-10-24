//
//  SixthSlide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/25.
//

import SwiftUI
import SlideKit

struct SixthSlide: Slide {

    enum SlidePhasedState: Int, PhasedState {
        case initial, next
    }

    @Phase var phasedStateStore

    var body: some View {
        HeaderSlide("Apple公式ドキュメントを少しみてみよう") {
            ContentView()
        }
    }

    struct WebView: NSViewRepresentable {

        let loardUrl: URL

        func makeNSView(context: Context) -> WKWebView {
            return WKWebView()
        }

        func updateNSView(_ uiView: WKWebView, context: Context) {
            let request = URLRequest(url: loardUrl)
            uiView.load(request)
        }
    }

    struct ContentView: Slide {

        var body: some View {
            WebView(loardUrl: URL(string: "https://developer.apple.com/documentation/corehaptics/")!)
        }
    }
}

#Preview {
    SlidePreview {
        SixthSlide()
    }
}


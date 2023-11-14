//
//  FifthSlide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/24.
//

import SwiftUI
import WebKit
import SlideKit

struct FifthSlide: Slide {

    enum SlidePhasedState: Int, PhasedState {
        case initial, next
    }

    @Phase var phasedStateStore

    var body: some View {
            HeaderSlide("HIGを少しみてみよう") {
                ContentView()
            }
    }
    struct WebView: NSViewRepresentable {

        let loadUrl: URL

        func makeNSView(context: Context) -> WKWebView {
            return WKWebView()
        }

        func updateNSView(_ uiView: WKWebView, context: Context) {
            let request = URLRequest(url: loadUrl)
            uiView.load(request)
        }
    }

    struct ContentView: Slide {

        var body: some View {
            WebView(loadUrl: URL(string: "https://developer.apple.com/jp/design/human-interface-guidelines/playing-haptics")!)
        }
    }
}

#Preview {
    SlidePreview {
        FifthSlide()
    }
}


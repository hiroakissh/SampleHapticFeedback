//
//  Sixth-1Slide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/11/13.
//

import SwiftUI
import WebKit
import SlideKit

struct Sixth_1Slide: Slide {

    enum SlidePhasedState: Int, PhasedState {
        case initial, next
    }

    @Phase var phasedStateStore

    var body: some View {
        HeaderSlide("Apple公式ドキュメントを少しみてみよう SwiftUI編") {
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
            WebView(loadUrl: URL(string: "https://developer.apple.com/documentation/swiftui/controls-and-indicators")!)
        }
    }
}

#Preview {
    Sixth_1Slide()
}

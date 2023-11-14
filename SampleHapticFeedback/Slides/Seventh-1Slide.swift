//
//  Seventh-1Slide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/11/14.
//

import SwiftUI
import WebKit
import SlideKit

struct Seventh_1Slide: Slide {
 
    var body: some View {
        HeaderSlide("Android公式チュートリアルを少しみてみよう") {
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
    Seventh_1Slide()
}

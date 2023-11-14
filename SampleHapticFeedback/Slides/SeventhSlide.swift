//
//  SeventhSlide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/25.
//

import SwiftUI
import WebKit
import SlideKit

struct SeventhSlide: Slide {

    var body: some View {
        HeaderSlide("Android公式ドキュメントを少しみてみよう") {
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
            WebView(loadUrl: URL(string: "https://developer.android.com/develop/ui/views/haptics/haptic-feedback?hl=ja")!)
        }
    }
}

#Preview {
    SlidePreview {
        SeventhSlide()
    }
}


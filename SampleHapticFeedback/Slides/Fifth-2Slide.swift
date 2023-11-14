//
//  Fifth-2Slide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/11/14.
//

import SwiftUI
import WebKit
import SlideKit

struct Fifth_2Slide: Slide {

    enum SlidePhasedState: Int, PhasedState {
        case initial, next
    }

    @Phase var phasedStateStore

    var body: some View {
            HeaderSlide("Androidの設計原則をみてみよう") {
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
            WebView(loadUrl: URL(string: "https://developer.android.com/develop/ui/views/haptics/haptics-principles?hl=ja")!)
        }
    }
}

#Preview {
    Fifth_2Slide()
}

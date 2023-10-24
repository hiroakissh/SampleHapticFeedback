//
//  ForthSlide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/24.
//

import SwiftUI
import WebKit
import SlideKit

struct ForthSlide: Slide, View {

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
            WebView(loardUrl: URL(string: "https://developer.apple.com/design/human-interface-guidelines/playing-haptics")!)
        }
    }

}

#Preview {
    SlidePreview {
        ForthSlide()
    }
}

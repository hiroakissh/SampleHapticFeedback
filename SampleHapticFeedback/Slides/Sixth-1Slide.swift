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
            if phasedStateStore.when(.initial) {
                ContentView()
            }
            if phasedStateStore.when(.next) {
                Code(code, colorTheme: .defaultDark, fontSize: 32)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(48)
                    .background(Color.init(red: 41 / 255, green: 42 / 255, blue: 47 / 255))
            }
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

    private let code = """
    @State private var toggle = false

    var body: some View {
        VStack {
            Button("Haptics") {
                toggle.toggle()
            }
        }
        // 例1
        .sensoryFeedback(.success, trigger: success)
        // 例2
        .sensoryFeedback(.impact(flexibility: .soft), trigger: impactSoft)
    }
    """
}

#Preview {
    Sixth_1Slide()
}

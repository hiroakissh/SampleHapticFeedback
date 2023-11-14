//
//  SixthSlide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/25.
//

import SwiftUI
import WebKit
import SlideKit

struct SixthSlide: Slide {

    enum SlidePhasedState: Int, PhasedState {
        case initial, next
    }

    @Phase var phasedStateStore

    var body: some View {
        HeaderSlide("Apple公式ドキュメントを少しみてみよう UIKit編") {
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
            WebView(loadUrl: URL(string: "https://developer.apple.com/documentation/uikit/animation_and_haptics")!)
        }
    }

    private let code = """
    private var hapticSample: UINotificationFeedbackGenerator = UINotificationFeedbackGenerator()

    // prepareメソッドはHapticを使用する直前に読んでも意味がない
    feedBack.prepare()

    // アクションの後に下記のように呼び出す
    feedBack.notificationOccurred(.warning)
    """
}

#Preview {
    SlidePreview {
        SixthSlide()
    }
}


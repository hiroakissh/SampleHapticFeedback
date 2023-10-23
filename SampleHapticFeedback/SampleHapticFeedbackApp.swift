//
//  SampleHapticFeedbackApp.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/23.
//

import SwiftUI
import SlideKit

@main
struct SampleHapticFeedbackApp: App {
    /// Edit slide configurations in SlideConfiguration.swift
    private static let configuration = SlideConfiguration()

    /// A presentation content view.
    /// Edit the view if you'd like to set environment, overlay view or background view here.
    var presentationContentView: some View {
        SlideRouterView(slideIndexController: Self.configuration.slideIndexController)
            .slideTheme(Self.configuration.theme)
            .foregroundColor(.black) // Edit this color if you want to use another color for text color.
            .background(.white)
    }

    var body: some Scene {
        WindowGroup {
            PresentationView(slideSize: Self.configuration.size) {
                presentationContentView
            }
        }
        .setupAsPresentationWindow(Self.configuration.slideIndexController, appName: "slide")
        .addPDFExportCommands(for: presentationContentView, with: Self.configuration.slideIndexController, size: Self.configuration.size)

        WindowGroup {
            macOSPresenterView(
                slideSize: Self.configuration.size,
                slideIndexController: Self.configuration.slideIndexController
            ) {
                presentationContentView
            }
        }
        .setupAsPresenterWindow()
    }
}

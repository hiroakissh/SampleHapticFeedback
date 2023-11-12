//
//  CustomHapticsView.swift
//  HapticsSampleApp
//
//  Created by HiroakiSaito on 2023/11/11.
//

import SwiftUI
import CoreHaptics

struct CustomHapticsView: View {

//    @State var engine = try! CHHapticEngine()

    var body: some View {
        Text("シングルタップ").onTapGesture {
            print("Tap")
        }
    }
}

#Preview {
    CustomHapticsView()
}

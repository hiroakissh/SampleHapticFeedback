//
//  CustomHeaderStyleSlide.swift
//  SampleHapticFeedback
//
//  Created by HiroakiSaito on 2023/10/23.
//

import SwiftUI
import SlideKit

struct CustomHeaderStyleSlide: Slide {
    var body: some View {
        HeaderSlide("Custom Style Slide") {
            Item("Header Slide Style") {
                Item("You can customize the layout of HeaderSlide by HeaderSlideStyle")
            }
            Item("Item Style") {
                Item("You can also customize the design of Item by ItemStyle")
            }
        }
        .headerSlideStyle(CustomHeaderStyle())
        .itemStyle(CustomItemStyle())
    }
}

struct CustomHeaderStyle: HeaderSlideStyle {

    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.header
                .font(.system(size: 90))
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background {
                    Color.accentColor
                }
            VStack(alignment: .leading, spacing: 48) {
                configuration.content
                    .font(.system(size: 48))
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct CustomItemStyle: ItemStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading, spacing: 28) {
            HStack(alignment: .firstTextBaseline, spacing: 10) {
                Group {
                    switch configuration.accessory {
                    case .bullet:
                        let text: String = (0..<configuration.itemDepth).reduce("#", { result, _ in result + "#" })
                        Text(text)
                            .fontWeight(.semibold)
                    case .string(let text):
                        Text("\(text).")
                            .fontWeight(.semibold)
                    case .number(let number):
                        Text("\(number).")
                    case nil: EmptyView()
                    }
                }

                configuration.label
                    .fixedSize()
            }


            if let child = configuration.child {
                child.padding(.leading)
            }
        }
    }
}

#Preview {
    SlidePreview {
        CustomHeaderStyleSlide()
    }
}

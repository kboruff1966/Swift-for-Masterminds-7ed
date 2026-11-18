//
//  SwiftUI_3_50_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/4/26.
//

import SwiftUI

struct SwiftUI_3_50_View: View {

    @State private var currentValue: Float = 5

    var body: some View {
        VStack {
            Text("Current Value: \(currentValue.formatted())")
            Slider(
                value: $currentValue,
                in: 0...10,
                label: {},
                ticks: {
                    SliderTick(0)
                    SliderTick(5)
                    SliderTick(10)
                }
            )
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_50_View()
}

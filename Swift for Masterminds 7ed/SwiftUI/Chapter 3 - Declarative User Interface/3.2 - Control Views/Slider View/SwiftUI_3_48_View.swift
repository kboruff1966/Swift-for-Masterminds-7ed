//
//  SwiftUI_3_48_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/4/26.
//

import SwiftUI

struct SwiftUI_3_48_View: View {

    @State private var currentValue: Float = 5

    var body: some View {
        VStack {
            Text("Current Value: \(currentValue.formatted())")
            Slider(value: $currentValue, in: 0...10, step: 1.0)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_48_View()
}

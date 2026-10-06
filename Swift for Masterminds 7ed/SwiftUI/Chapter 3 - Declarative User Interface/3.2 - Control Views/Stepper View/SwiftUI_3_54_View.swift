//
//  SwiftUI_3_54_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/5/26.
//

import SwiftUI

struct SwiftUI_3_54_View: View {

    @State private var currentValue: Float = 2

    var body: some View {
        VStack {
            Text("Current Value: \(currentValue.formatted())")
            Stepper("Counter", value: $currentValue, in: 0...5)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_54_View()
}

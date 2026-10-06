//
//  SwiftUI_3_44_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/4/26.
//

import SwiftUI

/// Listing 3-44: Implementing a Toggle
struct SwiftUI_3_44_View: View {

    @State private var currentState = true

    var body: some View {
        VStack {
            Toggle(
                isOn: $currentState,
                label: {
                    Text(currentState ? "On" : "Off")
                    Text("Enable or Disable")
                }
            )

            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_44_View()
}

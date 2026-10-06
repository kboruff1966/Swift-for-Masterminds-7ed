//
//  SwiftUI_3_47_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/4/26.
//

import SwiftUI

struct SwiftUI_3_47_View: View {

    @State private var currentState = false

    var body: some View {
        HStack {
            Toggle(
                isOn: $currentState,
                label: {
                    Label("Send", systemImage: "mail")
                }
            )
            .toggleStyle(.button)
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_47_View()
}

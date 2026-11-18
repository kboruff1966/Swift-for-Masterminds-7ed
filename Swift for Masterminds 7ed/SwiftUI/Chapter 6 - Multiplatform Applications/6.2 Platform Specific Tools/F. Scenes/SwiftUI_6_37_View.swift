//
//  SwiftUI_6_37_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/17/26.
//

import SwiftUI

struct SwiftUI_6_37_View: View {

    @Environment(\.openWindow) var openWindow

    var body: some View {
        VStack {
            Text("Hello, world!")
            Button("Open Auxiliary Window") {
                openWindow(id: "mywindow")
            }
            .buttonStyle(.borderedProminent)
        }
        .frame(
            minWidth: 500,
            maxWidth: .infinity,
            minHeight: 300,
            maxHeight: .infinity
        )
    }
}

#Preview {
    SwiftUI_6_37_View()
}

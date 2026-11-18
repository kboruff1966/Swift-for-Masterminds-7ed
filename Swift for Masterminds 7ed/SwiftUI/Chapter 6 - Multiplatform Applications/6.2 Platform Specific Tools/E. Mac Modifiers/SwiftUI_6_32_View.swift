//
//  SwiftUI_6_32_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/17/26.
//

import SwiftUI

struct SwiftUI_6_32_View: View {
    var body: some View {
        VStack {
            Text("Details")
        }
        .toolbar {
            ToolbarItem(placement: .automatic) {
                Button(
                    "Add Book",
                    systemImage: "plus",
                    action: {
                        print("Adding Book")
                    }
                )

                #if os(macOS)
                    .help("Press this button to add a book")
                    .pointerStyle(.link)
                #endif
            }

        }
        .navigationTitle("My Title")
    }
}

#Preview {
    SwiftUI_6_32_View()
}

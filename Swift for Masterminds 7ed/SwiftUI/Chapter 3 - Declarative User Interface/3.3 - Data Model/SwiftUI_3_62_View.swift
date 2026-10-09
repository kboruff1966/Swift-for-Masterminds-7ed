//
//  SwiftUI_3_61_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/5/26.
//

import SwiftUI

/// Listing 3-62: Updating the views manually
struct SwiftUI_3_62_View: View {

    @State private var appData = ApplicationData.shared
    @State private var textID: UUID = UUID()

    var body: some View {
        VStack(spacing: 8) {

            Text("\(appData.title) - \(appData.defaultValue)")
                .padding(10)
                .id(textID)

            TextField(
                "Insert Title",
                text: $appData.titleInput
            )
            .textFieldStyle(.roundedBorder)

            Button(
                action: {
                    appData.title = appData.titleInput
                    appData.titleInput = ""
                },
                label: {
                    Text("Save")
                }
            )

            Button(
                action: {
                    appData.defaultValue = 100
                    textID = UUID()
                },
                label: {
                    Text("Change Default Value")
                }
            )
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_62_View()
}

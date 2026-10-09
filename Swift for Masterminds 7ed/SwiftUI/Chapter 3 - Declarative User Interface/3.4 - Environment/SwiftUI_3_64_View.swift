//
//  SwiftUI_3_64_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/6/26.
//

import SwiftUI

/// Listing 3-64: Getting a reference to the observable object from the environment
struct SwiftUI_3_64_View: View {

    @Environment(ApplicationData.self) private var appData

    var body: some View {

        @Bindable var appData = appData

        VStack(spacing: 8) {
            Text(appData.title)
                .padding(10)
            TextField("Insert Title", text: $appData.titleInput)
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
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_64_View()
        .environment(ApplicationData.shared)
}

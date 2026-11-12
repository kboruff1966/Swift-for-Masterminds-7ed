//
//  SwiftUI_3_58_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/5/26.
//

import SwiftUI
import MyLibrary

/// Listing 3-58: Working with an observable object
struct SwiftUI_3_58_View: View {

    @State private var appData = ApplicationData.shared

    var body: some View {
        VStack(spacing: 10) {
            
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
    SwiftUI_3_58_View()
}

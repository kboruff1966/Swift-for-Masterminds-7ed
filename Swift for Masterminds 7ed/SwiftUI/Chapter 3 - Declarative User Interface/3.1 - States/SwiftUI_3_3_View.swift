//
//  SwiftUI_3_3_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/23/26.
//

import SwiftUI

struct SwiftUI_3_3_View: View {

    @State private var title = "Default Title"
    @State private var titleInput = ""

    var body: some View {
        VStack {
            Text(title)
                .padding(10)

            TextField("Insert Title", text: $titleInput)
                .textFieldStyle(.roundedBorder)

            Button(
                action: {
                    title = titleInput
                    titleInput = ""
                },
                label: {
                    Text("Change Title")
                }
            )

            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_3_View()
}

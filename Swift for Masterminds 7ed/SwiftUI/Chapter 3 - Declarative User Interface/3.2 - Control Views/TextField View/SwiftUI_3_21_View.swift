//
//  SwiftUI_3_21_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/28/26.
//

import SwiftUI

struct SwiftUI_3_21_View: View {

    @State private var title: String = "Default Title"
    @State private var titleInput: String = ""

    var body: some View {
        VStack(spacing: 15) {
            Text(title)
                .lineLimit(1)
                .padding()
                .background(Color.yellow)
            TextField("Insert Title", text: $titleInput)
                .textFieldStyle(.roundedBorder)
                #if os(iOS)
                .textInputAutocapitalization(.words)
                #endif
            Button("Save") {
                title = titleInput
                titleInput = ""
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_21_View()
}

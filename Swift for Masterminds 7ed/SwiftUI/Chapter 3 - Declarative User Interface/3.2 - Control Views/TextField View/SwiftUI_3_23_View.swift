//
//  SwiftUI_3_23_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/28/26.
//

import SwiftUI

struct SwiftUI_3_23_View: View {

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
                .submitLabel(.continue)
                .onSubmit {
                    assignTitle()
                }
            HStack {
                Spacer()
                Button("Save") {
                    assignTitle()
                }
            }
            Spacer()
        }
        .padding()
    }

    func assignTitle() {
        title = titleInput
        titleInput = ""
    }
}

#Preview {
    SwiftUI_3_23_View()
}

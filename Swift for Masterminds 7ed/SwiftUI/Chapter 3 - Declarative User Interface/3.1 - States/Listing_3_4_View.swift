//
//  Listing_3_4_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/23/26.
//

import SwiftUI

struct HeaderView: View {

    let title: String
    @Binding var titleInput: String

    var body: some View {
        VStack {
            Text(title)
                .padding(10)
            TextField("Insert Title", text: $titleInput)
                .textFieldStyle(.roundedBorder)
        }
    }
}

struct Listing_3_4_View: View {

    @State private var title = "Default Title"
    @State private var titleInput = ""

    var body: some View {
        VStack {
            HeaderView(title: title, titleInput: $titleInput)
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
    Listing_3_4_View()
}

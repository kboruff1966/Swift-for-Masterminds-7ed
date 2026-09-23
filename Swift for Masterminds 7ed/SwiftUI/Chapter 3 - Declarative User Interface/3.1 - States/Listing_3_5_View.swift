//
//  Listing_3_5_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/23/26.
//

import SwiftUI

struct HeaderView2: View {

    let title: String
    @Binding var titleInput: String

    var counter: Int {
        return title.count
    }

    var body: some View {
        VStack {
            Text("\(title) (\(counter))")
                .padding(10)
            TextField("Insert Title", text: $titleInput)
                .textFieldStyle(.roundedBorder)
        }
    }
}

struct Listing_3_5_View: View {

    @State private var title = "Default Title"
    @State private var titleInput = ""

    var body: some View {
        VStack {
            HeaderView2(title: title, titleInput: $titleInput)
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
    Listing_3_5_View()
}

#Preview("Header") {

    let constantInput = Binding<String>(
        get: { return "" },
        set: { value in print(value) }
    )

    return HeaderView(title: "My Preview Title", titleInput: constantInput)
}

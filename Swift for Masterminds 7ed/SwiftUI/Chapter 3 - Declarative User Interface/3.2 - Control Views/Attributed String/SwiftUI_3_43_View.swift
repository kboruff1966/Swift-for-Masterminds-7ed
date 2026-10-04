//
//  SwiftUI_3_43_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/3/26.
//

import SwiftUI

/// Listing 3-43: Inspecting runs to find if they apply a specific attribute
struct SwiftUI_3_43_View: View {

    var myText: AttributedString {

        let text1 = AttributedString(
            "SwiftUI",
            attributes: AttributeContainer()
                .font(.body.bold())
                .foregroundColor(.blue)
        )

        let text2 = AttributedString(
            " can show ",
            attributes: AttributeContainer()
                .foregroundColor(.purple)
        )

        let text3 = AttributedString(
            "attributes",
            attributes: AttributeContainer()
                .font(.body.bold())
                .backgroundColor(.red)
        )

        let text4 = AttributedString(".")

        return text1 + text2 + text3 + text4
    }

    var body: some View {
        VStack(spacing: 10) {
            Button(
                action: {
                    for (value, range) in myText.runs[\.foregroundColor]
                    where value != nil {
                        print("'\(String(myText.characters[range]))'")
                    }
                },
                label: {
                    Text("Find Color")
                }
            )
            .buttonStyle(.glassProminent)

            Text(myText)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_43_View()
}

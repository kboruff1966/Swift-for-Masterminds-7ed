//
//  SwiftUI_6_33_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/17/26.
//

import SwiftUI

// Listing 6-33: Showing suggestions for a text field
struct SwiftUI_6_33_View: View {

    @State private var text = ""
    let listSuggestions = ["Red", "Green", "Blue"]

    var body: some View {

        VStack {
            TextField("Insert Text", text: $text)
                .textFieldStyle(.roundedBorder)

                #if os(macOS)
                    .textInputSuggestions({
                        ForEach(listSuggestions, id: \.self) { suggestion in
                            Text(suggestion)
                                .textInputCompletion(suggestion)
                        }
                    })
                #endif
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_6_33_View()
}

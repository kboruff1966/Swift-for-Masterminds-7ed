//
//  SwiftUI_3_29_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/29/26.
//

import Playgrounds
import SwiftUI

/// Listing 3-29: Accepting only integer numbers
struct SwiftUI_3_29_View: View {

    @State private var title = "Default Name"
    @State private var numberInput = ""

    var body: some View {

        VStack(spacing: 10) {

            Text(title)
                .lineLimit(1)
                .padding()
                .background(Color.yellow)

            TextField("Insert Number", text: $numberInput)
                .textFieldStyle(.roundedBorder)
                .padding(4)
                #if os(iOS)
                .keyboardType(.numbersAndPunctuation)
                #endif
                .onChange(of: numberInput, initial: false) { old, value in

                    print("old: '\(old)'")
                    print("value: '\(value)'")

                    if !value.isEmpty && Int(value) == nil {
                        numberInput = old
                    }
                }
            HStack {
                Spacer()
                Button("Save") {
                    title = numberInput
                    numberInput = ""
                }
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_29_View()
}

#Playground {

    let value = "   "

    if let x = Int(value) {
        print(x)
    } else {
        print("nil")
    }

}

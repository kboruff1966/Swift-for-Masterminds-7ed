//
//  SwiftUI_3_26_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/29/26.
//

import SwiftUI

/// Listing 3-26: Checking the values before storing
struct SwiftUI_3_26_View: View {

    @FocusState var focusName: FocusName?

    @State private var title: String = "Default Name"
    @State private var nameInput: String = ""
    @State private var surnameInput: String = ""

    var body: some View {
        VStack(spacing: 10) {

            Text(title)
                .lineLimit(1)
                .padding()
                .background(Color.yellow)

            TextField("Insert Name", text: $nameInput)
                .textFieldStyle(.roundedBorder)
                .padding(4)
                .background(focusName == .name ? Color(white: 0.9) : .white)
                .focused($focusName, equals: .name)

            TextField("Insert Surname", text: $surnameInput)
                .textFieldStyle(.roundedBorder)
                .padding(4)
                .background(focusName == .surname ? Color(white: 0.9) : .white)
                .focused($focusName, equals: .surname)

            HStack {
                Spacer()
                Button("Save") {

                    let tempName = nameInput.trimmingCharacters(
                        in: .whitespacesAndNewlines
                    )

                    guard !tempName.isEmpty else { return }

                    let tempSurname = surnameInput.trimmingCharacters(
                        in: .whitespacesAndNewlines
                    )

                    guard !tempSurname.isEmpty else { return }

                    title = tempName + " " + tempSurname
                    nameInput = ""
                    surnameInput = ""
                    focusName = nil
                }
                /// Listing 3-27: Disabling the button
                .disabled(nameInput.isEmpty || surnameInput.isEmpty)
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_26_View()
}

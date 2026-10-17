//
//  SwiftUI_4_65_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 4-65: Styling a form
struct SwiftUI_4_65_View: View {

    @State private var setActive: Bool = false
    @State private var setShowPictures: Bool = false
    @State private var setTotal: Int = 10

    var body: some View {
        Form {

            Section(
                header: Text("Options"),
                footer: Text("Activate the options you want to see")
            ) {

                Toggle("Active", isOn: $setActive)
                Toggle("Show Pictures", isOn: $setShowPictures)
            }

            Section(
                header: Text("Values"),
                footer: Text("Insert the number of items to display")
            ) {

                HStack {
                    Text("Total")
                    Spacer()
                    Text(String(setTotal))
                    Stepper("", value: $setTotal, in: 0...10)
                        .labelsHidden()
                }
            }
        }
    }
}

#Preview {
    SwiftUI_4_65_View()
}

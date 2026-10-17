//
//  SwiftUI_4_63_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 4-63: Defining a form
struct SwiftUI_4_63_View: View {

    @State private var setActive: Bool = false
    @State private var setShowPictures: Bool = false
    @State private var setTotal: Int = 0
    @State private var setColor: String = "Red"

    private let colors = ["Red", "Green", "Blue"]

    var body: some View {

        VStack {

            Form {
                Toggle("Active", isOn: $setActive)
                Toggle("Show Pictures", isOn: $setShowPictures)
                Picker("Color", selection: $setColor) {
                    ForEach(colors, id: \.self) { color in
                        Text(color)
                    }
                }
                HStack {
                    Text("Total")
                    Spacer()
                    Text(String(setTotal))
                    Stepper("", value: $setTotal, in: 0...10)
                        .labelsHidden()
                }
            }

            List {
                Toggle("Active", isOn: $setActive)
                Toggle("Show Pictures", isOn: $setShowPictures)
                Picker("Color", selection: $setColor) {
                    ForEach(colors, id: \.self) { color in
                        Text(color)
                    }
                }
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
    SwiftUI_4_63_View()
}

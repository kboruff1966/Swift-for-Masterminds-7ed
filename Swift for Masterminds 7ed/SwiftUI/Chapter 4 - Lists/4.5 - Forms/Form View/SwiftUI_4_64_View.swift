//
//  SwiftUI_4_64_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 4-64: Defining custom labels for a form
struct SwiftUI_4_64_View: View {

    @State private var setActive: Bool = false
    @State private var setShowPictures: Bool = false
    @State private var setTotal: Int = 10

    var body: some View {

        Form {
            Toggle("Active", isOn: $setActive)
            Toggle("Show Pictures", isOn: $setShowPictures)
            LabeledContent("Total") {
                HStack {
                    Text(String(setTotal))
                    Stepper("", value: $setTotal, in: 0...10)
                        .labelsHidden()
                }
            }
        }
    }
}

#Preview {
    SwiftUI_4_64_View()
}

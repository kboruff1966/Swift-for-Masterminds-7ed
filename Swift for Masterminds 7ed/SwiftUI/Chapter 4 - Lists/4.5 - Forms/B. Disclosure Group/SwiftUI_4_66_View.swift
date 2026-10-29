//
//  SwiftUI_4_66_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 4-66: Disclosing controls
struct SwiftUI_4_66_View: View {

    @State private var setActive: Bool = false
    @State private var setShowPictures: Bool = false
    @State private var setTotal: Int = 10

    var body: some View {
        Form {
            
            DisclosureGroup("Controls") {
                Toggle("Active", isOn: $setActive)
                Toggle("Show Pictures", isOn: $setShowPictures)
            }
            
            DisclosureGroup("Values") {
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
    SwiftUI_4_66_View()
}

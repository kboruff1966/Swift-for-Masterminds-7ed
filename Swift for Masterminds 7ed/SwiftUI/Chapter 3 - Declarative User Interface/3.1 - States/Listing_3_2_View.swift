//
//  Listing_3_2_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/23/26.
//

import SwiftUI

struct Listing_3_2_View: View {

    @State private var title: String
    @State private var isValid: Bool

    let validationMsgs = [true: "Valid", false: "Invalid"]

    init() {
        let isValid = false
        title = validationMsgs[isValid]!
        self.isValid = isValid
    }

    var body: some View {
        VStack {
            Text(title)
                .padding(10)
            Button(
                action: {
                    isValid.toggle()
                    title = validationMsgs[isValid]!
                },
                label: {
                    Text("Change Validation")
                }
            )
            Spacer()
        }
        .padding()
    }
}

#Preview {
    Listing_3_2_View()
}

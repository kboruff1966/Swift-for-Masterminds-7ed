//
//  SwiftUI_3_2_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/23/26.
//

import SwiftUI

/// Listing 3-2: Defining multiple states
struct SwiftUI_3_2_View: View {

    @State private var isValid = false

    private var title: String {
        isValid ? "Valid" : "Invalid"
    }

    var body: some View {
        VStack {
            Text(title)
                .padding(10)
            Button(
                action: {
                    isValid.toggle()
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
    SwiftUI_3_2_View()
}

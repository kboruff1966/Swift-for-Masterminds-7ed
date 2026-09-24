//
//  Listing_3_13_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/23/26.
//

import SwiftUI

/// Listing 3-13: Disabling a button
struct Listing_3_13_View: View {

    @State private var color = Color.clear
    @State private var buttonDisabled = false

    var body: some View {
        VStack(spacing: 10) {
            
            Text("Default Title")
                .padding()
                .background(color)
            
            Button("Change Color") {
                color = Color.green
                buttonDisabled = true
            }
            .disabled(buttonDisabled)
            
            Spacer()
        }.padding()
    }
}

#Preview {
    Listing_3_13_View()
}

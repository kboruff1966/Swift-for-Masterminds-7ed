//
//  SwiftUI_3_46_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/4/26.
//

import SwiftUI

/// Listing 3-46: Defining a custom label for the Toggle view
struct SwiftUI_3_46_View: View {

    @State private var currentState = false

    var body: some View {
        HStack {
            Toggle("", isOn: $currentState)
                .labelsHidden()
            Text(currentState ? "On" : "Off")
                .padding()
                .background(Color(currentState ? .yellow : .gray))
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_46_View()
}

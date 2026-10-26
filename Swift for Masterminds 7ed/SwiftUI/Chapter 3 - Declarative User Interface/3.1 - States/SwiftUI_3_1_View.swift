//
//  SwiftUI_3_1_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/23/26.
//

import SwiftUI

/// Listing 3-1: Defining a state
struct SwiftUI_3_1_View: View {

    @State private var title = "Default Title"

    var body: some View {
        VStack {
            Text(title)
                .padding(10)
            Button(
                action: {
                    title = "My New Title"
                },
                label: {
                    Text("Change Title")
                }
            )
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_1_View()
}

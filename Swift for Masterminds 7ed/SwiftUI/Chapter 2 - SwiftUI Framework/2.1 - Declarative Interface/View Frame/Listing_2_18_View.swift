//
//  Listing_2_18_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-18: Assigning a specific padding for each side
struct Listing_2_18_View: View {
    var body: some View {
        Text("Hello, world!")
            .padding(
                EdgeInsets(
                    top: 0.0,
                    leading: 40.0,
                    bottom: 0.0,
                    trailing: 40.0
                )
            )
    }
}

#Preview {
    Listing_2_18_View()
}

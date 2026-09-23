//
//  Listing_2_49_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-49: Displaying a text with an SF Symbol
struct Listing_2_49_View: View {
    var body: some View {
        Label("Hello", systemImage: "envelope.circle")
            .font(.largeTitle)
            .labelIconToTitleSpacing(20)
            .imageScale(.large)
    }
}

#Preview {
    Listing_2_49_View()
}

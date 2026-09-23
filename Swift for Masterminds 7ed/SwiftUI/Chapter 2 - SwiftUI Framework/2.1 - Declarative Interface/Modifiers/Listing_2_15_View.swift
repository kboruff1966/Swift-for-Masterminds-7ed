//
//  Listing_2_15_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-15: Assigning a fixed size to a view
struct Listing_2_15_View: View {
    var body: some View {
        Text("Hello, world!")
            .frame(width: 200, height: 100, alignment: .leading)
    }
}

#Preview {
    Listing_2_15_View()
}

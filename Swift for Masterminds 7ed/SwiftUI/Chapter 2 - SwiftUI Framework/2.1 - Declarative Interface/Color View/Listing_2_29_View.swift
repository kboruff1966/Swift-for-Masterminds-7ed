//
//  Listing_2_29_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-29: Applying a predefined gradient to a view
struct Listing_2_29_View: View {
    var body: some View {
        Text("Hello World")
            .font(.largeTitle)
            .padding(20)
            .background(Color.gray.gradient)
    }
}

#Preview {
    Listing_2_29_View()
}

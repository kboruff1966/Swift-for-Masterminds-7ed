//
//  Listing_2_35_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-35: Clipping the image
struct Listing_2_35_View: View {
    var body: some View {
        Image(.toronto)
            .frame(width: 250, height: 100)
            .clipped()
    }
}

#Preview {
    Listing_2_35_View()
}

//
//  Listing_2_46_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-46: Displaying a multicolor symbol with custom colors
struct Listing_2_46_View: View {
    var body: some View {
        Image(systemName: "mic.badge.plus")
            .font(.system(size: 100))
            .symbolRenderingMode(.palette)
            .foregroundStyle(.red, .blue)
            .symbolColorRenderingMode(.gradient)
    }
}

#Preview {
    Listing_2_46_View()
}

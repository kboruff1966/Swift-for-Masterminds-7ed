//
//  Listing_2_38_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-38: Resizing and clipping the image to fill the view
struct Listing_2_38_View: View {
    var body: some View {
        Image("Toronto")
            .resizable()
            .scaledToFill()
            .frame(width: 250, height: 100)
            .clipped()
    }
}

#Preview {
    Listing_2_38_View()
}

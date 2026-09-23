//
//  Listing_2_37_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-37: Resizing an image to fit the view
struct Listing_2_37_View: View {
    var body: some View {
        Image("Toronto")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 250, height: 100)
    }
}

#Preview {
    Listing_2_37_View()
}

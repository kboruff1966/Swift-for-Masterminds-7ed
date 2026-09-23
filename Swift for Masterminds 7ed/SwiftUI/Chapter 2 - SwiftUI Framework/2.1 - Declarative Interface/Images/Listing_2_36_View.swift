//
//  Listing_2_36_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-36: Resizing the image
struct Listing_2_36_View: View {
    var body: some View {
        Image(.toronto)
            .resizable()
            .frame(width: 250, height: 100)
    }
}

#Preview {
    Listing_2_36_View()
}

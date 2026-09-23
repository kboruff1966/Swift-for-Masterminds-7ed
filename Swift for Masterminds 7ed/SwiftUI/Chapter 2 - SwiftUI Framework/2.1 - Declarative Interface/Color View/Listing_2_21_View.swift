//
//  Listing_2_21_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-21: Defining the color with RGB values
struct Listing_2_21_View: View {
    var body: some View {
        Color(red: 100 / 255, green: 228 / 255, blue: 255 / 255)
            .frame(width: 250, height: 100)
    }
}

#Preview {
    Listing_2_21_View()
}

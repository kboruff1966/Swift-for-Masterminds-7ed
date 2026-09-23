//
//  Listing_2_25_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-25: Assigning a background color to a Text view
struct Listing_2_25_View: View {
    var body: some View {
        Text("Hello World")
            .font(.largeTitle)
            .background(Color.gray)
    }
}

#Preview {
    Listing_2_25_View()
}

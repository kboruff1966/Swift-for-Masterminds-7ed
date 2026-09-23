//
//  Listing_2_7_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-7: Using the system font
struct Listing_2_7_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
            .font(.system(size: 50))
    }
}

#Preview {
    Listing_2_7_View()
}

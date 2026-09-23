//
//  Listing_2_56_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/22/26.
//

import SwiftUI

/// Listing 2-56: Aligning a horizontal stack of views
struct Listing_2_56_View: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "cloud")
                .font(.system(size: 80))
            Text("New York")
        }
    }
}

#Preview {
    Listing_2_56_View()
}

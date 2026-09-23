//
//  Listing_2_4_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-4: Displaying a date with a Text view
struct Listing_2_4_View: View {

    let today = Date()

    var body: some View {
        Text(today.formatted(date: .abbreviated, time: .omitted))
    }
}

#Preview {
    Listing_2_4_View()
}

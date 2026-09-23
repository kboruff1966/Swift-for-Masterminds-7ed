//
//  Listing_2_70_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/22/26.
//

import SwiftUI

/// Listing 2-70: Returning different views form the body property
struct Listing_2_70_View: View {

    let valid = false

    var body: some View {
        Group {
            if valid {
                Image(systemName: "keyboard")
            } else {
                Text("The state is invalid")
            }
        }
    }
}

#Preview {
    Listing_2_70_View()
}

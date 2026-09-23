//
//  Listing_2_69_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/22/26.
//

import SwiftUI

/// Listing 2-69: Arranging the views in groups
struct Listing_2_69_View: View {
    var body: some View {
        VStack {
            Group {
                Text("This is the list of")
                Text("cities")
            }
            .foregroundStyle(.gray)

            Group {
                Text("Manchester")
                Text("Viena")
            }
            .font(.largeTitle)
        }
    }
}

#Preview {
    Listing_2_69_View()
}

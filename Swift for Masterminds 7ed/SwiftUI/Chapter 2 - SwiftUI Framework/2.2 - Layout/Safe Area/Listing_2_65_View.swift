//
//  Listing_2_65_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/22/26.
//

import SwiftUI

/// Listing 2-65: Expanding the safe area
struct Listing_2_65_View: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Image(systemName: "cloud")
                    .font(.system(size: 80))
                VStack(alignment: .leading) {
                    Text("City")
                        .foregroundStyle(.gray)
                    Text("New York")
                        .font(.title)
                }
                Spacer()
            }
        }
        .safeAreaInset(
            edge: .bottom,
            content: {
                HStack {
                    Spacer()
                    Text("Important")
                        .padding()
                    Spacer()
                }
                .background(.yellow)
            }
        )
    }
}

#Preview {
    Listing_2_65_View()
}

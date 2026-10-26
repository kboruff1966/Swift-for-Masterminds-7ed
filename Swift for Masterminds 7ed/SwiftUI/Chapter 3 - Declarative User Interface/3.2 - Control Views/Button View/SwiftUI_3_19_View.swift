//
//  SwiftUI_3_19_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import SwiftUI

/// Listing 3-19: Buttons with SF Symbols
struct SwiftUI_3_19_View: View {

    var body: some View {
        VStack {
            Spacer()
            Button(
                action: {
                    print("Order Items")
                },
                label: {
                    Image(systemName: "cart.fill")
                        .imageScale(.large)
                        .padding()
                }
            )
            .buttonStyle(.glassProminent)
            .buttonBorderShape(.circle)
            .tint(.orange)
        }
    }
}

#Preview {
    SwiftUI_3_19_View()
}

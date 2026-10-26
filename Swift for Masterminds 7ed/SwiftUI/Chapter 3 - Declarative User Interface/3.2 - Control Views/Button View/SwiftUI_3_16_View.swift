//
//  SwiftUI_3_16_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/23/26.
//

import SwiftUI

/// Listing 3-16: Liquid glass buttons
struct SwiftUI_3_16_View: View {
    var body: some View {
        VStack {
            HStack {

                Button("Cancel", role: .destructive) {
                    print("Cancel Action")
                }
                .buttonStyle(.glass(.clear))

                Spacer()

                Button("Send", role: .confirm) {
                    print("Send Information")
                }
                .buttonStyle(.glassProminent)
            }
            Spacer()
        }
        .padding()
        .background(
            Image("Toronto")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}

#Preview {
    SwiftUI_3_16_View()
}

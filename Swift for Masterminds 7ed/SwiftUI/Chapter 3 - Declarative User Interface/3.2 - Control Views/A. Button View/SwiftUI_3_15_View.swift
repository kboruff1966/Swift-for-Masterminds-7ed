//
//  SwiftUI_3_15_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/23/26.
//

import SwiftUI

/// Listing 3-15: Assigning a role to a button
struct SwiftUI_3_15_View: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {

                Button("Delete", role: .destructive) {
                    print("Delete Action")
                }
                .buttonStyle(.bordered)

                Spacer()

                Button("Send", role: .confirm) {
                    print("Send Information")
                }
                .buttonStyle(.borderedProminent)
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_15_View()
}

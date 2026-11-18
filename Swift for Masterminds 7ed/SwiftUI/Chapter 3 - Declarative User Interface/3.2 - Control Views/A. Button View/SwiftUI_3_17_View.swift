//
//  SwiftUI_3_17_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import SwiftUI

/// Listing 3-17: Implementing large buttons
struct SwiftUI_3_17_View: View {
    var body: some View {
        VStack {
            Spacer()
            Button("Order") {
                print("Order Items")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
//            .buttonBorderShape(.roundedRectangle(radius: 10))
        }
    }
}

#Preview {
    SwiftUI_3_17_View()
}

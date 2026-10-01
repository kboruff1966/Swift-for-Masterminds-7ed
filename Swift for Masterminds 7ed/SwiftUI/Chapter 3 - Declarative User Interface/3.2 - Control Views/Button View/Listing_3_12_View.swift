//
//  Listing_3_12_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/23/26.
//

import SwiftUI

/// Listing 3-12: Adding and removing views from the interface
struct Listing_3_12_View: View {

    @State private var showInfo = false

    var body: some View {
        VStack(spacing: 10) {

            Button(showInfo ? "Hide Information" : "Show Information") {
                showInfo.toggle()
            }
            .padding()

            if showInfo {
                Text("This is the information")
            }
            
            Spacer()
        }
    }
}

#Preview {
    Listing_3_12_View()
}

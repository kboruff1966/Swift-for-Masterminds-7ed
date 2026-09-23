//
//  Listing_2_27_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-27: Assigning a border to the view
struct Listing_2_27_View: View {
    var body: some View {
        Text("Hello World")
            .font(.largeTitle)
            .padding(20)
            .background(Color.gray)
            .border(Color.yellow, width: 10)
    }
}

#Preview {
    Listing_2_27_View()
}

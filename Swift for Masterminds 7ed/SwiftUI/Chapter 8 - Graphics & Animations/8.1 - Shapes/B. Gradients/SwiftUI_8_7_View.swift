//
//  SwiftUI_8_7_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-7: Defining a linear gradient
struct SwiftUI_8_7_View: View {

    let gradient = Gradient(colors: [Color.red, Color.green])

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                .linearGradient(gradient, startPoint: .bottom, endPoint: .top)
            )
            .frame(width: 100, height: 100)
    }
}

#Preview {
    SwiftUI_8_7_View()
}

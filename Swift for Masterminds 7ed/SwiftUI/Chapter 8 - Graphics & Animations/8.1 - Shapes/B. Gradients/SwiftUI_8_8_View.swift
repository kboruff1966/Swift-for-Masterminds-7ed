//
//  SwiftUI_8_8_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-8: Defining a linear gradient with custom stops
struct SwiftUI_8_8_View: View {

    let gradient = Gradient(stops: [
        Gradient.Stop(color: Color.red, location: 0.0),
        Gradient.Stop(color: Color.green, location: 0.4),
    ])

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                .linearGradient(gradient, startPoint: .bottom, endPoint: .top)
            )
            .frame(width: 100, height: 100)
    }
}

#Preview {
    SwiftUI_8_8_View()
}

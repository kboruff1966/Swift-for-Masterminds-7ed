//
//  SwiftUI_8_9_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-9: Defining a circular gradient
struct SwiftUI_8_9_View: View {

    let gradient = Gradient(colors: [Color.red, Color.white])

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                .radialGradient(
                    gradient,
                    center: .center,
                    startRadius: 0,
                    endRadius: 120
                )
            )
            .frame(width: 100, height: 100)
    }
}

#Preview {
    SwiftUI_8_9_View()
}

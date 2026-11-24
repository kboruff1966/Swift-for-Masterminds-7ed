//
//  SwiftUI_8_10_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-10: Defining a mesh gradient
struct SwiftUI_8_10_View: View {

    var body: some View {
        MeshGradient(
            width: 3,
            height: 3,
            points: [
                [0.0, 0.0], [0.5, 0.0], [1.0, 0.0], [0.0, 0.5], [0.8, 0.8],
                [1.0, 0.6], [0.0, 1.0], [0.5, 1.0], [1.0, 1.0],
            ],
            colors: [
                .red, .purple, .indigo, .orange, .white, .blue, .yellow, .green,
                .mint,
            ]
        )
        .ignoresSafeArea(.all)
    }
}

#Preview {
    SwiftUI_8_10_View()
}

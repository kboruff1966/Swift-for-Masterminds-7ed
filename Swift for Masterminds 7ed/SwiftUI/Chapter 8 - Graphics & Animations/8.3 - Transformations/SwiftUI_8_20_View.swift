//
//  SwiftUI_8_20_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-20: Rotating the image
struct SwiftUI_8_20_View: View {
    var body: some View {
        Image(.spot1)
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 200)
            .scaleEffect(CGSize(width: 0.9, height: 0.9))
            .rotation3DEffect(
                .degrees(30),
                axis: (x: 0, y: 1, z: 0)
            )
    }
}

#Preview {
    SwiftUI_8_20_View()
}

//
//  SwiftUI_8_12_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-12: Filling a shape with an image
struct SwiftUI_8_12_View: View {

    var body: some View {
        Rectangle()
            .fill(.image(Image(.pattern)))
            .frame(width: 100, height: 100)
    }
}

#Preview {
    SwiftUI_8_12_View()
}

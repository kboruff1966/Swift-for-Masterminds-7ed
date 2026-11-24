//
//  SwiftUI_8_21_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-21: Clipping the image
struct SwiftUI_8_21_View: View {

    var body: some View {
        Image(.spot1)
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 200)
            .clipShape(Circle())
    }
}

#Preview {
    SwiftUI_8_21_View()
}

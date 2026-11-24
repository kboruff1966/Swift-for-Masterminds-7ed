//
//  SwiftUI_8_19_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-19: Displacing an image
struct SwiftUI_8_19_View: View {

    var body: some View {
        Image(.spot1)
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 200)
            .offset(CGSize(width: 75, height: 0))
    }
}

#Preview {
    SwiftUI_8_19_View()
}

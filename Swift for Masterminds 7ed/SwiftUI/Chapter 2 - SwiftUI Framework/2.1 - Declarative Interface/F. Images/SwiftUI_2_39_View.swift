//
//  SwiftUI_2_39_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-39: Resizing image to fill the container
struct SwiftUI_2_39_View: View {
    var body: some View {
        Image("Toronto")
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    SwiftUI_2_39_View()
}

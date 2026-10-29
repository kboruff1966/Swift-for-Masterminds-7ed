//
//  SwiftUI_2_16_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-16: Creating flexible containers
struct SwiftUI_2_16_View: View {
    var body: some View {
        Text("Hello, world!")
            .frame(minWidth: 0, maxWidth: .infinity)
    }
}

#Preview {
    SwiftUI_2_16_View()
}

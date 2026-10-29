//
//  SwiftUI_2_44_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-44: Assigning a variant to a symbol
struct SwiftUI_2_44_View: View {
    var body: some View {
        Image(systemName: "envelope")
            .font(.system(size: 100))
            .symbolVariant(.fill)
    }
}

#Preview {
    SwiftUI_2_44_View()
}

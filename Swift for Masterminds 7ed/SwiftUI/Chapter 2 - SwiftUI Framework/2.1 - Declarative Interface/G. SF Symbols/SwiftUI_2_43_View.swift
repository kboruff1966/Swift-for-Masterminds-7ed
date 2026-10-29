//
//  SwiftUI_2_43_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-43: Styling a symbol
struct SwiftUI_2_43_View: View {
    var body: some View {
        Image(systemName: "envelope")
            .font(.system(size: 100).weight(.semibold))
    }
}

#Preview {
    SwiftUI_2_43_View()
}

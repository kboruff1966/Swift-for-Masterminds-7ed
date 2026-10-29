//
//  SwiftUI_2_51_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-51: Applying custom modifiers
struct SwiftUI_2_51_View: View {
    var body: some View {
        Image(systemName: "envelope.circle")
            .modifier(MyModifiers(size: 50))
    }
}

#Preview {
    SwiftUI_2_51_View()
}

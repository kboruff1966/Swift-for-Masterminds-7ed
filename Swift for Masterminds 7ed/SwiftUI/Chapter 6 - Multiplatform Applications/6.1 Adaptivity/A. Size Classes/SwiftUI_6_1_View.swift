//
//  SwiftUI_6_1_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/12/26.
//

import SwiftUI

// Listing 6-1: Adapting the interface to the horizontal space available
struct SwiftUI_6_1_View: View {

    @Environment(\.horizontalSizeClass) var HSize

    var body: some View {

        Group {
            if HSize == .compact {
                Text("Small Interface")
            } else {
                Text("Large Interface")
            }
        }
    }
}

#Preview {
    SwiftUI_6_1_View()
}

//
//  SwiftUI_4_68_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/29/26.
//

import SwiftUI

/// Listing 4-68: Implementing a custom container
struct SwiftUI_4_68_View: View {

    var body: some View {
        BoxListView {
            Text("First")
            Text("Second")
            Text("Third")
        }
    }
}

#Preview {
    SwiftUI_4_68_View()
}

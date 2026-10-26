//
//  SwiftUI_2_19_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-19: Assigning padding with Edge values
struct SwiftUI_2_19_View: View {
    var body: some View {
        Text("Hello, world!")
            .padding([.top, .bottom], 50)
    }
}

#Preview {
    SwiftUI_2_19_View()
}

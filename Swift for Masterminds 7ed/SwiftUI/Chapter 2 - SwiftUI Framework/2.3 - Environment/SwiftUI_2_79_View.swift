//
//  SwiftUI_2_79_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/22/26.
//

import SwiftUI

/// Listing 2-79: Responding to updates in the states of the environment
struct SwiftUI_2_79_View: View {
    @Environment(\.colorScheme) var mode

    var body: some View {
        Image(systemName: "trash")
            .font(.system(size: 100))
            .foregroundStyle(mode == .dark ? Color.yellow : Color.blue)
            .symbolVariant(mode == .dark ? .fill : .circle)
    }
}

#Preview {
    SwiftUI_2_79_View()
}

//
//  SwiftUI_2_45_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-45: Displaying multicolor symbols
struct SwiftUI_2_45_View: View {
    var body: some View {
        Image(systemName: "mic.badge.plus")
            .font(Font.system(size: 100))
            .symbolRenderingMode(.multicolor)
    }
}

#Preview {
    SwiftUI_2_45_View()
}

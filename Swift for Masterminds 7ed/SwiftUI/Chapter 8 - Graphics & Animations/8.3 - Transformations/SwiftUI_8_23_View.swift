//
//  SwiftUI_8_23_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-23: Rotating a shape
struct SwiftUI_8_23_View: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .rotation(.degrees(45))
            .fill(.red)
            .frame(width: 100, height: 100)
    }
}

#Preview {
    SwiftUI_8_23_View()
}

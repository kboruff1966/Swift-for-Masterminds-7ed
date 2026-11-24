//
//  SwiftUI_8_2_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-2: Filling a shape with a color
struct SwiftUI_8_2_View: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.red)
            .frame(width: 100, height: 100)
    }
}

#Preview {
    SwiftUI_8_2_View()
}

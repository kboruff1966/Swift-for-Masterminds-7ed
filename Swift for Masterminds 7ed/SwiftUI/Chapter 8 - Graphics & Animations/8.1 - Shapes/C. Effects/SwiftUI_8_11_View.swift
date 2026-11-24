//
//  SwiftUI_8_11_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-11: Adding a shadow to a shape
struct SwiftUI_8_11_View: View {

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .foregroundStyle(
                .shadow(.drop(color: .black, radius: 3, x: 4, y: 4))
            )
            .foregroundStyle(.red)
            .frame(width: 100, height: 100)
    }
}

#Preview {
    SwiftUI_8_11_View()
}

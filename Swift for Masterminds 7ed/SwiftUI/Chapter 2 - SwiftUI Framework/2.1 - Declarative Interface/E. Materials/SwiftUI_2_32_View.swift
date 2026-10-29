//
//  SwiftUI_2_32_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/26/26.
//

import SwiftUI

/// Listing 2-32: Applying a material to the view's content
struct SwiftUI_2_32_View: View {

    var body: some View {
        Text("Hello World")
            .font(.largeTitle)
            .background(.red)
            .foregroundStyle(.thickMaterial)
    }
}

#Preview {
    SwiftUI_2_32_View()
}

//
//  SwiftUI_2_31_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/26/26.
//

import SwiftUI

/// Listing 2-31: Applying a material
struct SwiftUI_2_31_View: View {
    var body: some View {
        Text("Hello World")
            .font(.largeTitle)
            .background(.thickMaterial)
    }
}

#Preview {
    SwiftUI_2_31_View()
}

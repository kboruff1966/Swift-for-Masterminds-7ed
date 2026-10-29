//
//  SwiftUI_2_30_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/26/26.
//

import SwiftUI

/// Listing 2-30: Blending colors
struct SwiftUI_2_30_View: View {
    var body: some View {
        Text("Hello World")
            .font(.largeTitle)
            .padding(20)
            .background(Color.blue.mix(with: Color.red, by: 0.5))
    }
}

#Preview {
    SwiftUI_2_30_View()
}

//
//  SwiftUI_2_24_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-24: Assigning a color to the text of a Text view
struct SwiftUI_2_24_View: View {
    var body: some View {
        Text("Hello World")
            .font(.largeTitle)
            .foregroundStyle(Color.red)
    }
}

#Preview {
    SwiftUI_2_24_View()
}

//
//  SwiftUI_2_13_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/26/26.
//

import SwiftUI

/// Listing 2-13: Using standard fonts
struct SwiftUI_2_13_View: View {
    var body: some View {
        Text("Hello World")
            .font(Font.custom("Georgia", size: 50))
    }
}

#Preview {
    SwiftUI_2_13_View()
}

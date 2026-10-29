//
//  SwiftUI_2_14_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/26/26.
//

import SwiftUI

/// Listing 2-14: Using custom fonts
struct SwiftUI_2_14_View: View {
    var body: some View {
        Text("Hello World")
            .font(Font.custom("Horsepower-Regular", size: 50))
    }
}

#Preview {
    SwiftUI_2_14_View()
}

//
//  SwiftUI_2_26_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-26: Assigning a background color to a view with a paddin
struct SwiftUI_2_26_View: View {
    var body: some View {
        Text("Hello World")
            .font(.largeTitle)
            .padding(20)
            .background(Color.gray)
    }
}

#Preview {
    SwiftUI_2_26_View()
}

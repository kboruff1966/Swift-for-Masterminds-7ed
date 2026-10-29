//
//  SwiftUI_2_28_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/26/26.
//

import SwiftUI

/// Listing 2-28: Displaying a view in front of another view
struct SwiftUI_2_28_View: View {
    var body: some View {
        Text("Hello World")
            .font(.largeTitle)
            .padding(20)
            .background(Color.gray)
            .overlay(Color(red: 1, green: 1, blue: 0.3, opacity: 0.2))
    }
}

#Preview {
    SwiftUI_2_28_View()
}

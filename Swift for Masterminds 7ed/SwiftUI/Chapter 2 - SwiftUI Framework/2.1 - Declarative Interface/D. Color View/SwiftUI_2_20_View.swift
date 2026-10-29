//
//  SwiftUI_2_20_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-20: Implementing Color views
struct SwiftUI_2_20_View: View {
    var body: some View {
        Color(red: 0.9, green: 0.5, blue: 0.2)
            .frame(width: 250, height: 100)
    }
}

#Preview {
    SwiftUI_2_20_View()
}

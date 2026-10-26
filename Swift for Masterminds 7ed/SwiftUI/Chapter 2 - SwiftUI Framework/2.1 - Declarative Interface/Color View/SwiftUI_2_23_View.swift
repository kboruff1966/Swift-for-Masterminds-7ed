//
//  SwiftUI_2_23_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-23: Assigning a custom color
struct SwiftUI_2_23_View: View {
    var body: some View {
        VStack(spacing: 10) {
            Color("MyColor")
                .frame(width: 250, height: 100)
            Color("MyColor2")
                .frame(width: 250, height: 100)
        }
    }
}

#Preview {
    SwiftUI_2_23_View()
}

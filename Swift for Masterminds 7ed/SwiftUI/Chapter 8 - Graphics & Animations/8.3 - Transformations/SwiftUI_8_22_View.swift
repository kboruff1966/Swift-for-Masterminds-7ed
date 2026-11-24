//
//  SwiftUI_8_22_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-22: Adding a border to an irregular shape
struct SwiftUI_8_22_View: View {
    var body: some View {
        Image(.spot1)
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(Color.blue, lineWidth: 10)
            }
    }
}

#Preview {
    SwiftUI_8_22_View()
}

//
//  SwiftUI_8_13_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-13: Defining a custom path
struct SwiftUI_8_13_View: View {

    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 100, y: 150))
            path.addLine(to: CGPoint(x: 200, y: 150))
            path.addLine(to: CGPoint(x: 100, y: 250))
            path.closeSubpath()
        }
        .stroke(Color.blue, lineWidth: 5)
    }
}

#Preview {
    SwiftUI_8_13_View()
}

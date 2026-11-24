//
//  SwiftUI_8_14_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-14: Combining lines and arcs
struct SwiftUI_8_14_View: View {

    var body: some View {
        Path { path in
            
            path.move(to: CGPoint(x: 100, y: 150))
            path.addLine(to: CGPoint(x: 200, y: 150))
            path.addArc(
                center: CGPoint(x: 200, y: 170),
                radius: 20,
                startAngle: .degrees(270),
                endAngle: .degrees(90),
                clockwise: false
            )
            path.addLine(to: CGPoint(x: 100, y: 190))
        }
        .stroke(Color.blue, lineWidth: 5)
    }
}

#Preview {
    SwiftUI_8_14_View()
}

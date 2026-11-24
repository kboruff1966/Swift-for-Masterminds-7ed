//
//  SwiftUI_8_4_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-4: Defining a custom border
struct SwiftUI_8_4_View: View {

    let lineStyle = StrokeStyle(
        lineWidth: 15,
        lineCap: .round,
        lineJoin: .round,
        miterLimit: 0,
        dash: [20],
        dashPhase: 0
    )

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .stroke(Color.red, style: lineStyle)
            .frame(width: 100, height: 100)
    }
}

#Preview {
    SwiftUI_8_4_View()
}

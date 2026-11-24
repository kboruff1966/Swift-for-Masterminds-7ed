//
//  SwiftUI_8_34_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/19/26.
//

import SwiftUI

// Listing 8-34: Rotating the canvas
struct SwiftUI_8_34_View: View {

    var body: some View {
        Canvas { context, size in

            let imageFrame = CGRect(x: 160, y: 150, width: 161, height: 216)

            context.draw(Image(.spot1), in: imageFrame)
            context.rotate(by: .degrees(20))
            context.draw(Image(.spot1), in: imageFrame)
        }
        .padding()
    }
}

#Preview {
    SwiftUI_8_34_View()
}

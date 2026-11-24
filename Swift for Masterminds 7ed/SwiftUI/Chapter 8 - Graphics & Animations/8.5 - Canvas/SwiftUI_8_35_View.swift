//
//  SwiftUI_8_35_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/19/26.
//

import SwiftUI

// Listing 8-35: Rotating an image
struct SwiftUI_8_35_View: View {

    var body: some View {
        Canvas { context, size in
            
            context.translateBy(x: size.width / 2, y: size.height / 2)
            context.rotate(by: .degrees(45))

            let width = 161
            let height = 216
            
            let imageFrame = CGRect(
                x: -width / 2,
                y: -height / 2,
                width: width,
                height: height
            )

            context.draw(Image(.spot1), in: imageFrame)
        }
//        .ignoresSafeArea()
    }
}

#Preview {
    SwiftUI_8_35_View()
}

//
//  SwiftUI_8_32_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/19/26.
//

import SwiftUI

// Listing 8-32: Drawing an image of a custom size
struct SwiftUI_8_32_View: View {

    var body: some View {
        Canvas { context, size in
            
            let imageSize = CGSize(width: 161, height: 216)
            let posX = (size.width - imageSize.width) / 2
            let posY = posX
            let imageFrame = CGRect(
                x: posX,
                y: posY,
                width: imageSize.width,
                height: imageSize.height
            )

            context.draw(Image(.spot1), in: imageFrame)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SwiftUI_8_32_View()
}

//
//  SwiftUI_8_31_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/19/26.
//

import SwiftUI

// Listing 8-31: Drawing an image on the canvas
struct SwiftUI_8_31_View: View {

    var body: some View {
        
        Canvas { context, size in
            let imageFrame = CGRect(origin: .zero, size: size)
            context.draw(Image("spot1"), in: imageFrame)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SwiftUI_8_31_View()
}

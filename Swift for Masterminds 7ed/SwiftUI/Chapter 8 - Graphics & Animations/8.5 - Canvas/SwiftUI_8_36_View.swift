//
//  SwiftUI_8_36_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/20/26.
//

import SwiftUI

// Listing 8-36: Performing multiple transformations
struct SwiftUI_8_36_View: View {

    var body: some View {
        Canvas { context, size in
            
            let imageFrame = CGRect(x: 0, y: 0, width: 100, height: 100)

            context.translateBy(x: size.width / 2, y: size.height / 2)
            
            for _ in 0..<10 {
                context.rotate(by: .degrees(36))
                context.draw(Image(.spot1), in: imageFrame)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SwiftUI_8_36_View()
}

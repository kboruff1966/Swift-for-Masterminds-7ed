//
//  SwiftUI_8_27_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/19/26.
//

import SwiftUI

// Listing 8-27: Assigning a concentric shape to an image
struct SwiftUI_8_27_View: View {
    var body: some View {
        VStack {
            Image(.spot1)
                .resizable()
                .scaledToFit()
                .clipShape(ConcentricRectangle())
                .padding(40)
        }
        .background(.gray)
        .containerShape(.rect(cornerRadius: 60))
        .padding()
    }
}

#Preview {
    SwiftUI_8_27_View()
}

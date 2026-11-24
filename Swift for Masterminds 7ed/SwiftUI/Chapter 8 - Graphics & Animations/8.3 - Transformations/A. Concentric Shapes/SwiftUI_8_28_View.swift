//
//  SwiftUI_8_28_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/19/26.
//

import SwiftUI

// Listing 8-28: Concentric shapes with different corners
struct SwiftUI_8_28_View: View {

    var body: some View {
        HStack {

            Image(.spot1)
                .resizable()
                .scaledToFit()
                // .clipShape(ConcentricRectangle())

                // Listing 8-29: Concentric shapes with uniform corners
                .clipShape(
                    ConcentricRectangle(corners: .concentric, isUniform: true)
                )
                .padding(20)

            Image(.spot2)
                .resizable()
                .scaledToFit()
                // .clipShape(ConcentricRectangle())

                // Listing 8-29: Concentric shapes with uniform corners
                .clipShape(
                    ConcentricRectangle(corners: .concentric, isUniform: true)
                )
                .padding(20)
        }
        .background(.gray)
        .containerShape(.rect(cornerRadius: 60))
        .padding()
    }
}

#Preview {
    SwiftUI_8_28_View()
}

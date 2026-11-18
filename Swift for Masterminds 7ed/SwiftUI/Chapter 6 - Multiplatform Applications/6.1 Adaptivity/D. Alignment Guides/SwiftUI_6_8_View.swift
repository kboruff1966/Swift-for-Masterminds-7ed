//
//  SwiftUI_6_8_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/13/26.
//

import SwiftUI

// Listing 6-8: Aligning an image to the center with custom values
struct SwiftUI_6_8_View: View {

    var body: some View {
        HStack(alignment: .center) {
            Image("signbus")
                .alignmentGuide(
                    VerticalAlignment.center,
                    computeValue: { dimension in
                        return dimension[VerticalAlignment.center] + 18
                    }
                )

            Image("signplane")
            Image("signphone")
        }
        .border(Color.blue, width: 2)
    }
}

#Preview {
    SwiftUI_6_8_View()
}

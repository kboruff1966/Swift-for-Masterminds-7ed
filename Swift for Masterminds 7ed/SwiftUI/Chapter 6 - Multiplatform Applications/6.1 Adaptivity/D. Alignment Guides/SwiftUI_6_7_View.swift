//
//  SwiftUI_6_7_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/13/26.
//

import SwiftUI

// Listing 6-7: Aligning images to the center with standard values
struct SwiftUI_6_7_View: View {

    var body: some View {

        VStack {

            HStack(alignment: .center) {
                Image("signbus")
                Image("signplane")
                Image("signphone")
            }
            .border(Color.blue, width: 2)

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

            HStack(alignment: .center) {

                Image("signbus")
                    .alignmentGuide(
                        VerticalAlignment.center,
                        computeValue: { dimension in
                            return dimension[VerticalAlignment.center] + 18
                        }
                    )

                Image("signplane")
                    .alignmentGuide(
                        VerticalAlignment.center,
                        computeValue: { dimension in
                            return dimension[VerticalAlignment.center] + 68
                        }
                    )

                Image("signphone")
                    .alignmentGuide(
                        VerticalAlignment.center,
                        computeValue: { dimension in
                            return dimension[VerticalAlignment.center] + 89
                        }
                    )
            }
            .border(Color.blue, width: 2)

        }
    }
}

#Preview {
    SwiftUI_6_7_View()
}

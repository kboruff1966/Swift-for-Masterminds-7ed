//
//  SwiftUI_8_49_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/21/26.
//

import Charts
import SwiftUI

// Listing 8-49: Plotting a mathematical function
struct SwiftUI_8_49_View: View {

    var body: some View {
        VStack {
            Chart {
                LinePlot(x: "x", y: "y") { x in
                    sin(x)
                }
            }
            .chartXScale(domain: -5...5)
            .chartYScale(domain: -5...5)
            .frame(width: 300, height: 300)

            Spacer()
        }
    }
}

#Preview {
    SwiftUI_8_49_View()
}

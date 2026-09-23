//
//  Listing_2_48_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-48: Displaying a variable multicolor SF Symbol
struct Listing_2_48_View: View {

    @State private var value: CGFloat = 0.6

    var body: some View {

        HStack(spacing: 10) {
            Image(systemName: "thermometer.high", variableValue: value)
                .font(Font.system(size: 100))
                .symbolRenderingMode(.multicolor)
                .symbolVariableValueMode(.draw)
                .symbolColorRenderingMode(.gradient)

            Slider(value: $value, in: 0...1)
        }
        .padding()
    }
}

#Preview {
    Listing_2_48_View()
}

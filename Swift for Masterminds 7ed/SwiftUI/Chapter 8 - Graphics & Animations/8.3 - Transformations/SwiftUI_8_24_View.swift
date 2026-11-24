//
//  SwiftUI_8_24_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-24: Inverting a shape with the scale() modifier
struct SwiftUI_8_24_View: View {
    var body: some View {
        HStack {
            Triangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            Triangle()
                .scale(x: -1, y: 1)
                .fill(Color.blue)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    SwiftUI_8_24_View()
}

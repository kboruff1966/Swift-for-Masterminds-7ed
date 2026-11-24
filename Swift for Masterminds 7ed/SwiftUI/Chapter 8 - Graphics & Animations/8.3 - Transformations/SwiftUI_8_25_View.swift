//
//  SwiftUI_8_25_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/19/26.
//

import SwiftUI

// Listing 8-25: Trimming a path
struct SwiftUI_8_25_View: View {
    var body: some View {

        HStack {
            Triangle()
                .trim(from: 0, to: 0.50)
                .stroke(Color.blue, lineWidth: 10)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    SwiftUI_8_25_View()
}

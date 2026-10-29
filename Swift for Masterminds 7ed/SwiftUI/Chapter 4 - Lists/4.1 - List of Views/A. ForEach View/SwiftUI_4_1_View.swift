//
//  SwiftUI_4_1_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/6/26.
//

import SwiftUI

/// Listing 4-1: Creating a dynamic list of views
struct SwiftUI_4_1_View: View {

    var body: some View {
        VStack {
            ForEach(1...5, id: \.self) { value in
                Text("Value: \(value)")
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_4_1_View()
}

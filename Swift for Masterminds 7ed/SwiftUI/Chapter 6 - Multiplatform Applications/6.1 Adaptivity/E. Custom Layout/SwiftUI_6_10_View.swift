//
//  SwiftUI_6_10_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/14/26.
//

import SwiftUI

// Listing 6-10: Defining a custom layout
struct SwiftUI_6_10_View: View {

    var body: some View {
        MyLayout {
            Group {
                Text("First")
                Text("Second")
                Text("Third")
            }
            .padding(10)
            .background(.red)
            .font(.title)
        }
    }
}

#Preview {
    SwiftUI_6_10_View()
}

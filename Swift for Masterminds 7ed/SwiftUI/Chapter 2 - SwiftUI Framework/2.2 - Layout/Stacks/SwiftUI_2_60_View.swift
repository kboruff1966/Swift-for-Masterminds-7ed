//
//  SwiftUI_2_60_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/22/26.
//

import SwiftUI

/// Listing 2-60: Aligning nested containers
struct SwiftUI_2_60_View: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "cloud")
                    .font(.system(size: 80))
                Text("New York")
            }
            .background(.gray)
        }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
    }
}

#Preview {
    SwiftUI_2_60_View()
}

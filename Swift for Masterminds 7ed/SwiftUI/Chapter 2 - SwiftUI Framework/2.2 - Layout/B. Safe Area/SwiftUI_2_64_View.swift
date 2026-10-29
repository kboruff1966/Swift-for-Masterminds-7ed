//
//  SwiftUI_2_64_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/22/26.
//

import SwiftUI

/// Listing 2-64: Ignoring the safe area
struct SwiftUI_2_64_View: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "cloud")
                    .font(.system(size: 80))
                Text("New York")
                Spacer()
            }
            .background(.orange)
            Spacer()
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    SwiftUI_2_64_View()
}

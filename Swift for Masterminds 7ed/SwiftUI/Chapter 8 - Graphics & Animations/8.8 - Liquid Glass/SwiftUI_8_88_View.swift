//
//  SwiftUI_8_88_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/24/26.
//

import SwiftUI

// Listing 8-88: Applying the liquid glass effect to a group of views
struct SwiftUI_8_88_View: View {

    var body: some View {

        ZStack {

            Image("spot1")
                .resizable()
                .scaledToFit()

            GlassEffectContainer(spacing: 40) {
                HStack {
                    Image(systemName: "paperplane.circle")
                        .font(.largeTitle)
                        .padding()
                        .glassEffect(.regular.interactive())
                    Image(systemName: "music.microphone")
                        .font(.largeTitle)
                        .padding()
                        .glassEffect(.regular.interactive())
                }
            }
        }
    }
}

#Preview {
    SwiftUI_8_88_View()
}

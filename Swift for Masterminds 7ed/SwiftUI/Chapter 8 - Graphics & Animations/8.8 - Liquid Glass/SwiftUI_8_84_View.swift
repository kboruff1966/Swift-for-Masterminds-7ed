//
//  SwiftUI_8_84_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/24/26.
//

import SwiftUI

// Listing 8-84: Applying the liquid glass effect to a view
struct SwiftUI_8_84_View: View {

    let glass = Glass.clear
    let shape: some Shape = .rect(cornerRadius: 5)

    var body: some View {
        ZStack {

            Image(.spot1)
                .resizable()
                .scaledToFit()

            Text("Glass Effect")
                .font(.largeTitle)
                .padding()
                //                .glassEffect(glass, in: shape)
                .glassEffect(.regular.interactive())
                .onTapGesture {
                    print("Text pressed")
                }
        }
    }
}

#Preview {
    SwiftUI_8_84_View()
}

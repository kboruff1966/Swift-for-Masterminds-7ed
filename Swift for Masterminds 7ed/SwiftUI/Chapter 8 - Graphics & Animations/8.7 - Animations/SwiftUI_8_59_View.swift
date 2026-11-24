//
//  SwiftUI_8_59_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/23/26.
//

import SwiftUI

// Listing 8-59: Animating a view
struct SwiftUI_8_59_View: View {

    @State private var boxScale: CGFloat = 1
    let maxScale: CGFloat = 4

    var body: some View {

        VStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
                .scaleEffect(boxScale)
                .onTapGesture {
                    withAnimation(.default) {
                        boxScale = boxScale == 1 ? maxScale : 1
                    }
                }
        }
        .padding()
    }

}

#Preview {
    SwiftUI_8_59_View()
}

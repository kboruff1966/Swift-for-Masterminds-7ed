//
//  SwiftUI_9_9_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/25/26.
//

import SwiftUI

// Listing 9-9: Defining a MagnifyGesture recognizer
struct SwiftUI_9_9_View: View {

    @GestureState private var magnification: CGFloat = 1
    @State private var zoom: CGFloat = 1

    var body: some View {
        Image(.spot1)
            .resizable()
            .scaledToFit()
            .frame(width: 160, height: 200)
            .scaleEffect(zoom * magnification)
            .gesture(
                MagnifyGesture()
                    .updating($magnification) {
                        gestureValue,
                        liveScale,
                        transaction in

                        liveScale = gestureValue.magnification
                    }
                    .onEnded { gestureValue in
                        zoom = zoom * gestureValue.magnification
                    }
            )
    }
}

#Preview {
    SwiftUI_9_9_View()
}

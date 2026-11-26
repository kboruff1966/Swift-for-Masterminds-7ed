//
//  SwiftUI_9_10_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/25/26.
//

import SwiftUI

// Listing 9-10: Determining a minimum and a maximum scale
struct SwiftUI_9_10_View: View {

    @GestureState private var magnification: CGFloat = 1
    @State private var zoom: CGFloat = 1

    var body: some View {
        
        Image(.spot1)
            .resizable()
            .scaledToFit()
            .frame(width: 160, height: 200)
            .scaleEffect(getCurrentZoom(magnification: magnification))
            .gesture(
                MagnifyGesture()
                    .updating($magnification) {
                        gestureValue,
                        liveScale,
                        transaction in

                        liveScale = gestureValue.magnification
                    }
                    .onEnded { gestureValue in
                        zoom = getCurrentZoom(
                            magnification: gestureValue.magnification
                        )
                    }
            )
    }

    func getCurrentZoom(magnification: CGFloat) -> CGFloat {

        let minZoom: CGFloat = 1
        let maxZoom: CGFloat = 2
        return max(min(zoom * magnification, maxZoom), minZoom)
    }

}

#Preview {
    SwiftUI_9_10_View()
}

//
//  SwiftUI_9_11_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/25/26.
//

import SwiftUI

// Listing 9-11: Defining a RotateGesture recognizer
struct SwiftUI_9_11_View: View {

    @GestureState private var rotationAngle: Angle = Angle.zero
    @State private var rotation: Angle = Angle.zero

    var body: some View {
        
        Image(.spot1)
            .resizable()
            .scaledToFit()
            .frame(width: 160, height: 200)
            .rotationEffect(rotation + rotationAngle)
            .gesture(
                RotateGesture()
                    .updating($rotationAngle) { value, state, transaction in
                        state = value.rotation
                    }
                    .onEnded { value in
                        rotation = rotation + value.rotation
                    }
            )
    }
}

#Preview {
    SwiftUI_9_11_View()
}

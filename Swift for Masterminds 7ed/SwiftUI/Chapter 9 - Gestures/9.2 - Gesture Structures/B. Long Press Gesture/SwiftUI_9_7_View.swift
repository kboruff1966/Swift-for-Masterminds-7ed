//
//  SwiftUI_9_7_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/25/26.
//

import SwiftUI

// Listing 9-7: Defining a LongPressGesture recognizer
struct SwiftUI_9_7_View: View {

    @GestureState private var pressing = false
    @State private var expand = false

    var body: some View {
        VStack {
            Image("spot1")
                .resizable()
                .scaledToFit()
                .frame(width: 160, height: 200)
                .opacity(pressing ? 0 : 1)
                .gesture(
                    LongPressGesture(minimumDuration: 1)
                        .updating($pressing) {
                            isPressing,
                            pressingState,
                            transaction in

                            // pressingState stands in for `pressing`; SwiftUI resets it to false when the gesture ends
                            pressingState = isPressing
                            transaction.animation = Animation.easeInOut(
                                duration: 1.5
                            )
                        }
                        .onEnded { value in
                            expand = true
                        }
                )
                .sheet(isPresented: $expand) {
                    ShowImage()
                }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_9_7_View()
}

//
//  SwiftUI_9_8_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/25/26.
//

import SwiftUI

enum PressingState {

    case active
    case inactive

    var isActive: Bool {

        switch self {
        case .active:
            return true
        case .inactive:
            return false
        }
    }
}

// Listing 9-8: Controlling the states of a gesture with an enumeration
struct SwiftUI_9_8_View: View {

    @GestureState private var pressingState = PressingState.inactive
    @State private var expand = false

    var body: some View {
        VStack {
            Image(.spot1)
                .resizable()
                .scaledToFit()
                .frame(width: 160, height: 200)
                .opacity(pressingState.isActive ? 0 : 1)
                .gesture(
                    LongPressGesture(minimumDuration: 1)
                        .updating($pressingState) {
                            isPressing,
                            pressingState,
                            transaction in

                            pressingState = isPressing ? .active : .inactive
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
    SwiftUI_9_8_View()
}

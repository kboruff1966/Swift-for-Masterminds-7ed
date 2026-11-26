//
//  SwiftUI_9_3_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/24/26.
//

import SwiftUI

// Listing 9-3: Detecting a long press gesture
struct SwiftUI_9_3_View: View {

    @State private var expand = false
    @State private var pressing = false

    var body: some View {
        VStack {
            Image(.spot1)
                .resizable()
                .scaledToFit()
                .frame(width: 160, height: 200)
                .opacity(pressing ? 0 : 1)
                .onLongPressGesture(
                    minimumDuration: 1,
                    maximumDistance: 10,
                    perform: {
                        expand = true
                    },
                    onPressingChanged: { value in
                        withAnimation(.easeInOut(duration: 1.5)) {
                            pressing = value
                        }
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
    SwiftUI_9_3_View()
}

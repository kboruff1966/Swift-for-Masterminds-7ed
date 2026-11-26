//
//  SwiftUI_9_6_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/25/26.
//

import SwiftUI

// Listing 9-6: Defining a TapGesture recognizer
struct SwiftUI_9_6_View: View {

    @State private var expand = false

    var body: some View {
        VStack {

            Image("spot1")
                .resizable()
                .scaledToFit()
                .frame(
                    width: 160,
                    height: 200
                )
                .gesture(
                    TapGesture(count: 1)
                        .onEnded { expand = true }
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
    SwiftUI_9_6_View()
}

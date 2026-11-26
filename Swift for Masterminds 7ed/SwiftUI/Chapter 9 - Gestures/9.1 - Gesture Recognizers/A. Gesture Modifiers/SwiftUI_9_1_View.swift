//
//  SwiftUI_9_1_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/24/26.
//

import SwiftUI

// Listing 9-1: Detecting a tap gesture on an image
struct SwiftUI_9_1_View: View {

    @State private var expand = false

    var body: some View {
        VStack {
            Image(.spot1)
                .resizable()
                .scaledToFit()
                .frame(width: 160, height: 200)
                .onTapGesture { location in
                    expand = true
                    print("Location: \(location)")
                }
                .sheet(isPresented: $expand) {
                    ShowImage()
                }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_9_1_View()
}

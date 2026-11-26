//
//  SwiftUI_9_4_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/24/26.
//

import SwiftUI

// Listing 9-4: Disabling the tap gesture
struct SwiftUI_9_4_View: View {

    @State private var expand = false
    @State private var allowExpansion = false

    var body: some View {

        VStack(spacing: 20) {
            
            Image(.spot1)
                .resizable()
                .scaledToFit()
                .frame(width: 160, height: 200)
                .onTapGesture {
                    expand = true
                }
                .allowsHitTesting(allowExpansion)
                .sheet(isPresented: $expand) {
                    ShowImage()
                }
            
            Toggle("", isOn: $allowExpansion)
                .labelsHidden()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_9_4_View()
}

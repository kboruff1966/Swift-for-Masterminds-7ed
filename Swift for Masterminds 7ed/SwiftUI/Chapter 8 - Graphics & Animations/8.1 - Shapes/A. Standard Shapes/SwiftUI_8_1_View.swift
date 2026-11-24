//
//  SwiftUI_8_1_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-1: Drawing standard shapes
struct SwiftUI_8_1_View: View {

    var body: some View {

        VStack {
            ScrollView(.horizontal, showsIndicators: true) {
                
                HStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .frame(width: 100, height: 100)
                    Circle()
                        .frame(width: 100, height: 100)
                    Ellipse()
                        .frame(width: 100, height: 50)
                    Capsule()
                        .frame(width: 100, height: 50)
                }
                .padding()
            }
            
            Spacer()
        }
    }
}

#Preview {
    SwiftUI_8_1_View()
}

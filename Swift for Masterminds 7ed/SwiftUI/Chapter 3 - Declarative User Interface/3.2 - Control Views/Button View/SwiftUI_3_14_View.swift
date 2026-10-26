//
//  SwiftUI_3_14_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/23/26.
//

import SwiftUI

/// Listing 3-14: Styling buttons
struct SwiftUI_3_14_View: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                
                Button("Cancel") {
                    print("Cancel Action")
                }
                .buttonStyle(.bordered)
                
                Spacer()
                
                Button("Send") {
                    print("Send Information")
                }
                .buttonStyle(.borderedProminent)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_14_View()
}

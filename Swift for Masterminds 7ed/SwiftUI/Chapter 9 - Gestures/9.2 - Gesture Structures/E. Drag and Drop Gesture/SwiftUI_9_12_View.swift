//
//  SwiftUI_9_12_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/25/26.
//

import SwiftUI

// Listing 9-12: Allowing the user to drag an image
struct SwiftUI_9_12_View: View {

    var body: some View {
        
        VStack {
            
            Image(.husky)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 400)
                .draggable(Image(.husky)) 

            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_9_12_View()
}

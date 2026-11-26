//
//  SwiftUI_9_13_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/26/26.
//

import SwiftUI

// Listing 9-13: Providing a custom preview for the gesture
struct SwiftUI_9_13_View: View {

    var body: some View {
        VStack {
            Image("husky")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 400)
                .draggable(
                    Image("husky"),
                    preview: {
                        Image(systemName: "scope")
                            .font(.system(size: 50))
                    }
                )
            Spacer()
        }
    }
}

#Preview {
    SwiftUI_9_13_View()
}

//
//  SwiftUI_9_14_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/26/26.
//

import SwiftUI

// Listing 9-14: Dropping images into an Image view
struct SwiftUI_9_14_View: View {

    @State private var picture: Image = Image("nopicture")

    var body: some View {
        VStack {
            picture
                .resizable()
                .scaledToFit()
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 400)
                .dropDestination(
                    for: Image.self,
                    action: { elements, location in
                        
                        guard let image = elements.first else {
                            return false
                        }

                        picture = image
                        return true
                    }
                )
            
            Spacer()
        }
    }

}

#Preview {
    SwiftUI_9_14_View()
}

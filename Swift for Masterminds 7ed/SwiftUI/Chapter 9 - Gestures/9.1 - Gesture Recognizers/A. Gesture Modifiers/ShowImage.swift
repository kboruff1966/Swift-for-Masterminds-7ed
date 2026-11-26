//
//  ShowImage.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/24/26.
//

import SwiftUI

// Listing 9-2: Showing the image
struct ShowImage: View {

    var body: some View {
        Image(.spot1)
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ShowImage()
}

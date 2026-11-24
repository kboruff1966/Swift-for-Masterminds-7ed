//
//  SwiftUI_8_30_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/19/26.
//

import SwiftUI

struct SwiftUI_8_30_View: View {

    @State private var pattern: UIImage?
    let newPicture = NewPictureView()

    var body: some View {
        VStack {

            newPicture

            Button("Export Image") {
                
                let renderer = ImageRenderer(content: newPicture)
                if let image = renderer.uiImage { pattern = image }
            }
            .buttonStyle(.glassProminent)

            if let pattern {
                Image(uiImage: pattern)
                    .resizable(resizingMode: .tile)
                    .frame(width: 300, height: 200)
            }

            Spacer()
        }
    }

}

struct NewPictureView: View {
    
    var body: some View {
        Image(.spot1)
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 200)
            .clipShape(Circle())
    }
}

#Preview {
    SwiftUI_8_30_View()
}

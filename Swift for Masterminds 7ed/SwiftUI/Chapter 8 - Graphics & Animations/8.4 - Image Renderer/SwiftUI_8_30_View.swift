//
//  SwiftUI_8_30_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/19/26.
//

import SwiftUI

struct SwiftUI_8_30_View: View {

    #if canImport(UIKit)
    @State private var pattern: UIImage?
    #else
    @State private var pattern: NSImage?
    #endif
    let newPicture = NewPictureView()

    var body: some View {
        VStack {

            newPicture

            Button("Export Image") {
                
                let renderer = ImageRenderer(content: newPicture)
                #if canImport(UIKit)
                if let image = renderer.uiImage { pattern = image }
                #else
                if let image = renderer.nsImage { pattern = image }
                #endif
            }
            .buttonStyle(.glassProminent)

            if let pattern {
                #if canImport(UIKit)
                Image(uiImage: pattern)
                    .resizable(resizingMode: .tile)
                    .frame(width: 300, height: 200)
                #else
                Image(nsImage: pattern)
                    .resizable(resizingMode: .tile)
                    .frame(width: 300, height: 200)
                #endif
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

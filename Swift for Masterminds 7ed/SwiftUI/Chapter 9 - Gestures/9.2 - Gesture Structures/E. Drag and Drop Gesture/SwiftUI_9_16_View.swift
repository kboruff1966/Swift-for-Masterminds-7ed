//
//  SwiftUI_9_16_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/26/26.
//

import SwiftUI
import UniformTypeIdentifiers

// Bridge UIImage/NSImage so the rest of the file is platform-agnostic
#if canImport(UIKit)
    typealias PlatformImage = UIImage

    extension Image {
        init(platformImage: PlatformImage) {
            self.init(uiImage: platformImage)
        }
    }
#else
    typealias PlatformImage = NSImage

    extension Image {
        init(platformImage: PlatformImage) {
            self.init(nsImage: platformImage)
        }
    }

    extension NSImage {
        // NSImage has no pngData(), so convert through a bitmap representation
        nonisolated func pngData() -> Data? {
            
            guard let tiff = tiffRepresentation,
                let bitmap = NSBitmapImageRep(data: tiff)
            else { return nil }
            
            return bitmap.representation(using: .png, properties: [:])
        }
    }
#endif

struct ImageRepresentation: Transferable {

    let name: String
    let image: PlatformImage

    static var transferRepresentation: some TransferRepresentation {

        DataRepresentation(
            exportedContentType: .png,
            exporting: { value in
                value.image.pngData() ?? Data()
            }
        )
    }
}

// Listing 9-16: Dragging custom values
struct SwiftUI_9_16_View: View {

    @State private var picture: PlatformImage =
        PlatformImage(named: "nopicture") ?? PlatformImage()

    var body: some View {
        VStack {
            Image(platformImage: picture)
                .resizable()
                .scaledToFit()
                .draggable(
                    ImageRepresentation(name: "My Picture", image: picture)
                )
                .dropDestination(
                    for: Data.self,
                    action: { elements, location in

                        guard let data = elements.first,
                            let image = PlatformImage(data: data)
                        else {
                            return false
                        }

                        picture = image
                        return true
                    }
                )

            Spacer()
        }
        .padding()
    }

}

#Preview {
    SwiftUI_9_16_View()
}

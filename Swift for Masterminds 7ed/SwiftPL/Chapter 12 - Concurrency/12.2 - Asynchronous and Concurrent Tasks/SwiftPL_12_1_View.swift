//
//  SwiftPL_12_1_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/10/26.
//

import SwiftUI
import NHL

/// Listing 12-1: Running a synchronous task
struct SwiftPL_12_1_View: View {

    @State private var image: Image?

    @State private var hasStartedLoading = false
    @State private var loadStartTime = Date.now

    var body: some View {

        VStack(spacing: 10) {

            HStack {
                Button("Other Task") {
                    print("some other task")
                }
                .buttonStyle(.borderedProminent)

                Spacer()

                Button("Load Image") {
                    
                    hasStartedLoading = true
                    loadStartTime = .now
                    
                    image = loadImage(name: nhlImageNames.randomElement()!)
                 
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()

            if let image {
                image
                    .resizable()
                    .scaledToFit()

            } else if hasStartedLoading {
                TimelineView(.periodic(from: loadStartTime, by: 1)) { context in
                    let elapsedSeconds = Int(
                        context.date.timeIntervalSince(loadStartTime)
                    )
                    ProgressView("Loading image… (\(elapsedSeconds)s)")
                }
            }
        }

    }

    func loadImage(name: String) -> Image {

        let duration = UInt32.random(in: 3...5)

        print("sleep loadImage for \(duration) seconds")
        sleep(duration)

        return Image(name, bundle: nhlBundle)
    }

}

#Preview {
    SwiftPL_12_1_View()
}

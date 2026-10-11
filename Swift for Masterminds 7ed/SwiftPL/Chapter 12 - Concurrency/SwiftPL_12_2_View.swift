//
//  SwiftPL_12_2_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/10/26.
//

import SwiftUI

/// Listing 12-2: Running an asynchronous task
struct SwiftPL_12_2_View: View {

    @State private var imageName = nhlImageNames.randomElement()!
    @State private var imageLoading = false

    var body: some View {

        VStack(spacing: 10) {

            if imageLoading {
                Text("Image loading... do other task")
                    .font(.title)
            }

            HStack {
                Button("Other Task") {
                    print("some other task")
                }
                .buttonStyle(.borderedProminent)

                Spacer()

                Button("Load Image") {
                    Task {
                        imageLoading = true
                        imageName = await loadImage(
                            name: nhlImageNames.randomElement()!
                        )
                        imageLoading = false
                    }
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()

            Image(imageName)
                .resizable()
                .scaledToFit()

        }
    }

    func loadImage(name: String) async -> String {
        try? await Task.sleep(for: .seconds(5))
        return name
    }
}

#Preview {
    SwiftPL_12_2_View()
}

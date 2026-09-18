//
//  Listing_12_4_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-4: Running asynchronous tasks sequentially
struct Listing_12_4_View: View {
    var body: some View {
        VStack(spacing: 20) {
        
            Text("Hello, world!")
                .font(.title)

            Button("Run Task") {
                Task {

                    let imageName = await loadImage(name: "My Image")
                    print(imageName)

                    let text = await loadText()
                    print(text)
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }

    func loadImage(name: String) async -> String {
        let duration = Int.random(in: 1...5)

        print("process loadImage for \(duration) seconds")
        try? await Task.sleep(for: .seconds(duration))

        return "Name: \"\(name)\" after \(duration) seconds"
    }

    func loadText() async -> String {
        let duration = Int.random(in: 1...5)

        print("process loadText for \(duration) seconds")
        try? await Task.sleep(for: .seconds(duration))

        return "result from LoadText after \(duration) seconds"
    }
}

#Preview {
    Listing_12_4_View()
}

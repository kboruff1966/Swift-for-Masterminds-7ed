//
//  Listing_12_3_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-3: Running multiple asynchronous tasks
struct Listing_12_3_View: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, world!")

            Button("Run Task") {
                Task {
                    let imageName = await loadImage(name: "My Image")
                    print(imageName)
                }
                Task {
                    let text = await loadText()
                    print(text)
                }
                print("This runs outside the tasks")
            }
        }
        .font(.system(size: 30))
    }

    func loadImage(name: String) async -> String {
        let duration = Int.random(in: 1...5)

        print("sleep loadImage for \(duration) seconds")
        try? await Task.sleep(for: .seconds(duration))

        return "Name: \(name)"
    }

    func loadText() async -> String {
        let duration = Int.random(in: 1...5)

        print("sleep loadText for \(duration) seconds")
        try? await Task.sleep(for: .seconds(duration))

        return "result from LoadText"
    }
}

#Preview {
    Listing_12_3_View()
}

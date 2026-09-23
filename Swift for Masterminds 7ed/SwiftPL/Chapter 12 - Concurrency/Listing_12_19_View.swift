//
//  Listing_12_19_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/19/26.
//

import SwiftUI

// Listing 12-19: Defining a task group
struct Listing_12_19_View: View {
    var body: some View {
        VStack {

            Text("Hello World!")
                .padding()

            Button("Run Task") {
                Task {
                    let images = await withTaskGroup(of: String.self) {
                        group in

                        for i in 1...3 {
                            group.addTask(priority: .background) {
                                await self.loadImage(name: "My Image \(i)")
                            }
                        }

                        var results = [String]()

                        for await result in group {
                            results.append(result)
                        }

                        return results
                    }

                    for (i, image) in images.enumerated() {
                        print("\(i + 1): \(image)")
                    }
                }
            }
        }
        .font(.system(size: 30))
    }

    func loadImage(name: String) async -> String {

        let duration = Int.random(in: 1...3)
        try? await Task.sleep(for: .seconds(duration))
        return "Name: \"\(name)\" loaded after \(duration) second(s)"
    }
}

#Preview {
    Listing_12_19_View()
}

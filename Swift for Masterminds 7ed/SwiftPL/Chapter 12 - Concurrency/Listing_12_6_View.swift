//
//  Listing_12_6_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-6: Cancelling a task
struct Listing_12_6_View: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()

            Button("Run Task") {

                let myTask = Task {
                    let imageName = await loadImage(name: "My Image")
                    print(imageName)
                }

                Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) {
                    timer in myTask.cancel()
                }
            }
        }
        .font(.system(size: 30))
    }

    func loadImage(name: String) async -> String {
        let duration = Int.random(in: 3...5)

        print("process loadImage for \(duration) seconds")
        try? await Task.sleep(for: .seconds(duration))

        return Task.isCancelled
            ? "Task Cancelled"
            : "Name: \"\(name)\" after \(duration) seconds"
    }
}

#Preview {
    Listing_12_6_View()
}

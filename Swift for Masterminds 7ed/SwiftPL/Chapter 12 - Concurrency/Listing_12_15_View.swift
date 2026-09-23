//
//  Listing_12_15_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-15: Declaring a structure nonisolated
struct Listing_12_15_View: View {

    nonisolated struct ApplicationData {

        @concurrent
        func loadImage(name: String) async -> String {

            async let task1 = taskNumber(1)
            async let task2 = taskNumber(2)

            return "\(name) - \(await task1) - \(await task2)"
        }

        func taskNumber(_ number: Int) -> String {

            let duration = UInt32.random(in: 1...5)
            sleep(duration)

            return "Task \(number): \(duration) seconds"
        }
    }

    let appData = ApplicationData()

    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button("Run Task") {
                Task {
                    let imageName = await appData.loadImage(name: "My Image")
                    print(imageName)
                }
            }
        }
        .font(.system(size: 30))
    }
}

#Preview {
    Listing_12_15_View()
}

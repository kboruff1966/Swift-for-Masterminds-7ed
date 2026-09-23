//
//  Listing_12_14_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-14: Running multiple concurrent tasks
struct Listing_12_14_View: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button("Run Task") {
                Task {
                    let imageName = await loadImage(name: "My Image")
                    print(imageName)
                }
                print("running task")
            }
        }
        .font(.system(size: 30))
    }

    @concurrent
    func loadImage(name: String) async -> String {

        async let t1 = taskNumber(1)
        async let t2 = taskNumber(2)

        return "Values returned: \(await t1) / \(await t2)"
    }

    nonisolated func taskNumber(_ number: Int) async -> String {
        sleep(5)
        return "Task \(number)"
    }
}

#Preview {
    Listing_12_14_View()
}

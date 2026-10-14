//
//  Listing_12_9_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-9: Protecting data with an actor
struct SwiftPL_12_9_View: View {

    actor ItemData {

        var counter: Int = 0
        let maximum = 50

        func incrementCount() -> String {
            counter += 1
            return "Value: \(counter)"
        }

        nonisolated func maximumValue() -> String {
            return "Maximum: \(maximum)"
        }
    }

    var item: ItemData = ItemData()
    @State private var taskID = 0

    var body: some View {

        Text(item.maximumValue())

        Button("Run Task") {

            print("Task ID: \(taskID)")
            taskID += 1

            Task {
                await loadImage(name: "My Image")
            }
        }
        .font(.system(size: 30))
    }

    @concurrent
    func loadImage(name: String) async {
        sleep(5)
        let total = await item.incrementCount()
        print("Total: \(total)")
    }
}

#Preview {
    SwiftPL_12_9_View()
}

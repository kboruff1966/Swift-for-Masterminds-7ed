//
//  Listing_12_9_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-9: Protecting data with an actor
struct Listing_12_9_View: View {

    actor ItemData {

        var counter = 0

        func incrementCount() -> String {
            counter += 1
            return "Value: \(counter)"
        }
    }

    var item = ItemData()

    var body: some View {
        Button("Run Task") {
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
    Listing_12_9_View()
}

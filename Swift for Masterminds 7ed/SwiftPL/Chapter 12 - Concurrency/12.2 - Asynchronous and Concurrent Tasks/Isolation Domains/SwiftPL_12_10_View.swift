//
//  Listing_12_10_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-10: Defining a non-isolated method
struct SwiftPL_12_10_View: View {

    actor ItemData {

        var counter = 0
        let maximum = 50

        func incrementCount() -> String {
            counter += 1
            return "Value: \(counter)"
        }

        nonisolated func maximumValue() -> String {
            return "Maximum value: \(maximum)"
        }
    }

    var item = ItemData()

    var body: some View {
        Button("Start Process") {
            let value = item.maximumValue()
            print(value)
        }
        .font(.system(size: 30))
    }
}

#Preview {
    SwiftPL_12_10_View()
}

//
//  Listing_12_10_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

actor ItemData2 {

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

// Listing 12-10: Defining a non-isolated method
struct Listing_12_10_View: View {

    var item = ItemData2()

    var body: some View {
        Button("Start Process") {
            let value = item.maximumValue()
            print(value)
        }
        .font(.system(size: 30))
    }
}

#Preview {
    Listing_12_10_View()
}

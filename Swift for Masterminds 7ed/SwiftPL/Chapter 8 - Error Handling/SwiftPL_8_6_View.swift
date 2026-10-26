//
//  Listing_8_6_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/19/26.
//

import SwiftUI

// Listing 8-6: Ignoring the errors
struct Listing_8_6_View: View {

    enum Errors: Error {
        case OutOfStock
    }

    struct Stock {

        var totalLamps = 5

        mutating func sold(amount: Int) throws {

            guard amount <= totalLamps else {
                throw Errors.OutOfStock
            }

            totalLamps -= amount
        }
    }

    var body: some View {
        VStack(spacing: 10) {

            Text("Hello, world!")

            Button("Process") {

                var mystock = Stock()

                if mystock.totalLamps > 3 {
                    try! mystock.sold(amount: 3)
                }

                print("Lamps remaining in stock: \(mystock.totalLamps)")
            }
        }
        .font(.system(size: 30))
    }
}

#Preview {
    Listing_8_6_View()
}

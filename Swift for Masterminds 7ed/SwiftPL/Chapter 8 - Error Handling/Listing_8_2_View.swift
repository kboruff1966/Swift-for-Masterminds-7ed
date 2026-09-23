//
//  Listing_8_2_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/19/26.
//

import SwiftUI

struct Listing_8_2_View: View {

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

                do {
                    try mystock.sold(amount: 8)
                } catch Errors.OutOfStock {
                    print("We do not have enough lamps")
                } catch {
                    print("this should not occur")
                }

                print("Lamps in stock: \(mystock.totalLamps)")
            }
        }
        .font(.system(size: 30))
    }
}

#Preview {
    Listing_8_2_View()
}

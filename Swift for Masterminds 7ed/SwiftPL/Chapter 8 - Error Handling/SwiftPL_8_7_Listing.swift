//
//  Listing_8_7_Listing.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/19/26.
//

import SwiftUI

struct Listing_8_7_Listing: View {

    enum Errors: Error {
        case OutOfStock
    }

    struct Stock {

        var totalLamps = 5

        mutating func sold(amount: Int) -> Result<Int, Errors> {

            guard amount <= totalLamps else {
                return .failure(.OutOfStock)
            }

            totalLamps -= amount
            return .success(totalLamps)
        }
    }

    var body: some View {

        VStack(spacing: 10) {
            Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)

            Button("Process") {

                var mystock = Stock()

                let message =
                    switch mystock.sold(amount: 3) {
                    case .success(let stock):
                        "Lamps remaining in stock: \(stock)"
                    case .failure(let error) where error == .OutOfStock:
                        "Error: Out of Stock"
                    default:
                        "Error"
                    }

                print(message)
            }
        }
        .font(.system(size: 30))
    }
}

#Preview {
    Listing_8_7_Listing()
}

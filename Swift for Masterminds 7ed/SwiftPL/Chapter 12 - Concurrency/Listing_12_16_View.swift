//
//  Listing_12_16_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/19/26.
//

import SwiftUI

nonisolated final class Product: Sendable {

    let name: String
 
    init(name: String) {
        self.name = name
    }
}

actor ItemData {

    var stock = 100

    func sellProduct(product: Product, quantity: Int) {

        guard quantity <= stock else {
            print("Not enough stock for \(product.name)")
            return
        }

        stock -= quantity
        print("Stock: \(stock) for \(product.name)")
    }
}

// Listing 12-16: Defining a sendable class
struct Listing_12_16_View: View {

    var item: ItemData = ItemData()

    var body: some View {
        Button("Run Task") {
            Task {
                let product = Product(name: "Lamp")
                await showStock(product: product)
            }
        }
        .font(.system(size: 30))
    }

    @concurrent
    func showStock(product: Product) async {
        let quantity = Int.random(in: 1...110)
        await item.sellProduct(product: product, quantity: quantity)
    }
}

#Preview {
    Listing_12_16_View()
}

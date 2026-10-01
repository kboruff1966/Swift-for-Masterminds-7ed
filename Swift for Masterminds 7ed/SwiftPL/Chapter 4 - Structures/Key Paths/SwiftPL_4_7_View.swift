//
//  Listing_4_7_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_4_7_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_4_7_View()
}

/// Listing 4-7: Using read and write key paths
#Playground {

    struct Item {
        var name: String
        var price: Double
    }

    var purchase: Item = Item(name: "Lamps", price: 27.50)
    let keyPrice = \Item.price

    purchase[keyPath: keyPrice] = 30.00
    print(purchase.price)  // 30.0
}

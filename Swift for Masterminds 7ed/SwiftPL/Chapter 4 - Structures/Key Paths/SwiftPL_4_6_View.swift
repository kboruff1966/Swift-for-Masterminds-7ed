//
//  Listing_4_6_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_4_6_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_4_6_View()
}

/// Listing 4-6: Creating key paths
#Playground {

    struct Item {
        let name: String
        let price: Double
    }

    var purchase: Item = Item(name: "Lamps", price: 27.50)
    let keyPrice = \Item.price
    
    print("Purchase price: \(purchase[keyPath: keyPrice])")
}

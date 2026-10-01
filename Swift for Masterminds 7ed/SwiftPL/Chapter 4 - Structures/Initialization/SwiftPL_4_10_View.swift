//
//  Listing_4_10_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_4_10_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_4_10_View()
}

#Playground {

    struct Item {
        var name = "not defined"
        var price = 0.0
    }

    var purchase = Item(name: "Lamps", price: 10.50)
    print("Purchase: \(purchase.name) for \(purchase.price)")
    
    var purchase2 = Item(name: "Lamps")
    var purchase3 = Item(price: 10.50)
}

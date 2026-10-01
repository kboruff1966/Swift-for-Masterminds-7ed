//
//  Listing_4_5_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_4_5_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_4_5_View()
}

/// Listing 4-5: Accessing optional properties
#Playground {

    struct Price {
        var USD = 0.0
        var CAD = 0.0
    }

    struct Item {
        var name: String = "Not defined"
        var price: Price?
    }

    var purchase = Item()
    purchase.name = "Lamps"
    purchase.price?.USD = 10.50  // nil

}

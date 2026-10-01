//
//  Listing_4_8_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_4_8_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_4_8_View()
}

/// Listing 4-8: Defining methods
#Playground {

    struct Item {
        
        var name = "Not defined"
        var price = 0.0

        func total(quantity: Double) -> Double {
            return quantity * price
        }
    }

    var purchase = Item()
    purchase.name = "Lamp"
    purchase.price = 10.50
    
    print("Total: \(purchase.total(quantity: 2))")
}

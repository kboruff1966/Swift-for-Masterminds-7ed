//
//  Listing_4_9_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_4_9_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_4_9_View()
}

/// Listing 4-9: Assigning new values to properties from the methods in the structure
#Playground {

    struct Item {

        var name = "Not defined"
        var price = 0.0

        mutating func changename(newname: String) {
            name = newname
        }
    }

    var purchase = Item()
    purchase.changename(newname: "Lamps")

    print("Product: \(purchase.name)")  // "Product: Lamps"
}

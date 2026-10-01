//
//  Listing_4_11_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import SwiftUI
import Playgrounds

struct SwiftPL_4_11_View: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_4_11_View()
}

#Playground {
    
    struct Item {
        var name: String
        var price: Double
    }
    
    var purchase = Item(name: "Lamp", price: 10.50)
    print("Purchase: \(purchase.name) for \(purchase.price)")
}

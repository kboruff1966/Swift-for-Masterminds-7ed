//
//  Listing_4_2_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import SwiftUI
import Playgrounds

struct SwiftPL_4_2_View: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_4_2_View()
}

#Playground {
    
    struct Item {
        var name = "Not defined"
        var price = 0.0
    }
    
    var purchase = Item()
    
    purchase.name = "Lamps"
    purchase.price = 10.50
    
    print("Product: \(purchase.name) $ \(purchase.price)")
}

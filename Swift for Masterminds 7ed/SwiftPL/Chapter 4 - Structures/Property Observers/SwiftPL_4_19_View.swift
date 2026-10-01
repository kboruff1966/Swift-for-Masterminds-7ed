//
//  Listing_4_19_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_4_19_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_4_19_View()
}

/// Listing 4-19: Adding observers to a store property
#Playground {
    struct Price {

        var increment: Double = 0
        var oldprice: Double = 0

        var price: Double {
            
            willSet {
                increment = newValue - price
                print("price at willset: \(price)")
            }
            
            didSet {
                oldprice = oldValue
                print("price at didset: \(price)")
            }
        }
    }

    var product = Price(price: 15.95)
    product.price = 20.75
    
    print("New price: \(product.price)")  // "New price: 20.75"
    print("Old price: \(product.oldprice)")  // "Old price: 15.95"
    print("Increment: \(product.increment.formatted())")
}

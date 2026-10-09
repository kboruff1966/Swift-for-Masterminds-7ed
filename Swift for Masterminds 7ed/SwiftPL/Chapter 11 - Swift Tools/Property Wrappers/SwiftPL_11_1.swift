//
//  SwiftPL_11_1.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import Foundation
import Playgrounds

/// Listing 11-1: Defining a property wrapper
#Playground {

    @propertyWrapper
    struct ClampedValue {

        var storedValue = 0
        var min = 0
        var max = 255

        init(wrappedValue: Int) {
            self.wrappedValue = wrappedValue
        }

        var wrappedValue: Int {
            get {
                storedValue
            }
            set {
                storedValue = Swift.min(max, Swift.max(min, newValue))
            }
        }

    }
    
    struct Price {
        
        @ClampedValue var firstPrice: Int
        @ClampedValue var secondPrice: Int
        
        func printMessage() {
            print("First Price: \(firstPrice)")
            print("Second Price: \(secondPrice)")
        }
    }
    
    var purchase = Price(firstPrice: -42, secondPrice: 350)
    purchase.printMessage( )

}

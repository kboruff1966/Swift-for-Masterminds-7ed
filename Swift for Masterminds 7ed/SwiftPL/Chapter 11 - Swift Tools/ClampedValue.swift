//
//  ClampedValue.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/22/26.
//

import Foundation
import Playgrounds

#Playground {

    @propertyWrapper
    struct ClampedValue {

        var storedValue = 0
        var min = 0
        var max = 255

        var wrappedValue: Int {

            get {
                storedValue
            }

            set {
                storedValue = Swift.max(Swift.min(newValue, max), min)
            }
        }

        init(wrappedValue: Int) {
            self.wrappedValue = wrappedValue
        }
    }

    struct Price {
        
        @ClampedValue var firstPrice: Int
        @ClampedValue var secondPrice: Int

        func printMessage() {
            print("First Price: \(firstPrice)")  // "First Price: 0"
            print("Second Price: \(secondPrice)")  // "Second Price: 255"
        }
    }

    var purchase = Price(firstPrice: -42, secondPrice: 350)
    purchase.printMessage()

}

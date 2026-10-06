//
//  SwiftPL_3_20_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/4/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_3_20_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_3_20_View()
}

/// Listing 3-20: Initializing a variable with the value returned by a closure
#Playground {

    let myaddition = { () -> Int in

        var total = 0
        let list = stride(from: 1, through: 9, by: 1)

        for number in list {
            total += number
        }

        return total
    }()

    /// Listing 3-21: Simplifying a closure
    let myaddition2 = {
        (1...9).reduce(0, +)
    }()

    print("The total is \(myaddition2)")
}

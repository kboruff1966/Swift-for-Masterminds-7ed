//
//  SwiftPL_3_4_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/3/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_3_4_View: View {
    var body: some View {
        Text("Hello world")
    }
}

#Preview {
    SwiftPL_3_4_View()
}

/// Listing 3-4: Sending multiple values to a function
#Playground {

    func multiply(number1: Int, number2: Int) {
        let result = number1 * number2
        let message = "The result is \(result)"  // "The result is 80"
    }

    multiply(number1: 20, number2: 4)
}

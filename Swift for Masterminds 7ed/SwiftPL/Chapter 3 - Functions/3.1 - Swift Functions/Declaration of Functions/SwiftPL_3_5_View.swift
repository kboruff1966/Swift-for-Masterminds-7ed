//
//  SwiftPL_3_5_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/3/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_3_5_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_3_5_View()
}

/// Listing 3-5: Sending different values to a function
#Playground {

    func doubleValue(number: Int) {
        let total = number * 2
        let message = "Result: \(total)"
    }

    doubleValue(number: 5)  // "Result: 10"
    doubleValue(number: 25)  // "Result: 50"

}

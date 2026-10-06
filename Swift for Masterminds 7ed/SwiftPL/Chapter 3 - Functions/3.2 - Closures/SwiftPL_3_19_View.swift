//
//  SwiftPL_3_19_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/4/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_3_19_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_3_19_View()
}

/// Listing 3-19: Assigning closures to variables
#Playground {

    let multiplier = { (number: Int, times: Int) -> Int in
        let total = number * times
        return total
    }

    print("The result is \(multiplier(10, 5))")  // "The result is 50"

}

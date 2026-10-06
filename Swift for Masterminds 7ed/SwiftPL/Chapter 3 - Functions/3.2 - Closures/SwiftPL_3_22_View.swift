//
//  SwiftPL_3_22_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/4/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_3_22_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_3_22_View()
}

/// Listing 3-22: Sending a closure to a function
#Playground {

    let multiplier = { (number: Int, times: Int) -> Int in
        number * times
    }

    func processclosure(myclosure: (Int, Int) -> Int) {
        let total = myclosure(10, 2)
        print("The total is: \(total)")  // "The total is: 20"
    }

    processclosure(myclosure: multiplier)

}

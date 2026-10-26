//
//  SwiftPL_5_8_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/25/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_5_8_View: View {

    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_5_8_View()
}

/// Listing 5-8: Creating an enumeration from a raw value
#Playground {

    enum Number: String {
        
        case one = "Number One"
        case two = "Number Two"
        case three = "Number Three"
    }

    var myNumber = Number(rawValue: "Number Two")

    if myNumber == .two {
        print("Correct Value")
    }

}

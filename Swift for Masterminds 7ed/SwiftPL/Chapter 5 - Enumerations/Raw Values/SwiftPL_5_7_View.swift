//
//  Listing_5_7_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/25/26.
//

import Playgrounds
import SwiftUI

struct Listing_5_7_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Listing_5_7_View()
}

/// Listing 5-7: Reading raw values
#Playground {

    enum Number: String {
        case one = "Number One"
        case two = "Number Two"
        case three = "Number Three"
    }

    var mynumber = Number.one
    print("The raw value of mynumber is \"\(mynumber.rawValue)\"")

}

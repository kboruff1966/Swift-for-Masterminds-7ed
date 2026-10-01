//
//  Listing_5_5_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/25/26.
//

import Playgrounds
import SwiftUI

struct Listing_5_5_View: View {

    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Listing_5_5_View()
}

/// Listing 5-5: Using switch with an enumeration type
#Playground {

    enum Number {
        case one
        case two
        case three
    }

    var mynumber = Number.two

    switch mynumber {

    case .one:
        print("One")
    case .two:
        print("Two")
    case .three:
        print("Three")
    }

}

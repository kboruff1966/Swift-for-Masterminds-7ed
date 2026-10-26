//
//  Listing_5_10_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/25/26.
//

import Playgrounds
import SwiftUI

struct Listing_5_10_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Listing_5_10_View()
}

/// Listing 5-10: Associating values
#Playground {

    enum MyCharacters {
        case number(Int, String)
        case letter(Character, String)
    }

    var character = MyCharacters.number(1, "Number One")

    switch character {
    case .number(let value, let description):
        print("\(description) - \(value)")  // "Number One - 1"
    case .letter(let letter, let description):
        print("\(description) - \(letter)")
    }

}

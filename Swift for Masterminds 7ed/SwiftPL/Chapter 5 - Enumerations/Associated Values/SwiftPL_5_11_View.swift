//
//  Listing_5_11_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/25/26.
//

import Playgrounds
import SwiftUI

struct Listing_5_11_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Listing_5_11_View()
}

/// Listing 5-11: Checking the value of an enumeration with an if statement
#Playground {

    enum MyCharacters {
        case number(Int, String)
        case letter(Character, String)
    }

    var character = MyCharacters.number(1, "Number One")

    if case .number(let number, let text) = character {
        print("Number: \(number)")  // "Number: 1"
        print("Text: \(text)")  // "Text: Number One"
    }

}

//
//  SwiftPL_3_7_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/3/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_3_7_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_3_7_View()
}

/// Listing 3-7: Returning a tuple
#Playground {

    func sumCharacters(word: String) -> (String, Int) {
        
        var characters = ""
        var counter = 0

        for letter in word {
            characters += "\(letter) "
            counter += 1
        }

        return (characters, counter)
    }

    var (list, total) = sumCharacters(word: "Hello")
    var message = "There are \(total) characters (\(list))"
}

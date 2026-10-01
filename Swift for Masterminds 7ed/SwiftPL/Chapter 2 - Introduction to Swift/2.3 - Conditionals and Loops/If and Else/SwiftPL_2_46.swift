//
//  SwiftPL_2_46.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/25/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_2_46: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_2_46()
}

/// Listing 2-46: Unwrapping an optional value of the same name
#Playground {

    var count = 0
    var myoptional: Int? = 5

    if let myoptional {
        count = count + myoptional  // 5
    }

}

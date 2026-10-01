//
//  SwiftPL_2_45.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/25/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_2_45: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_2_45()
}

/// Listing 2-45: Using the same name to unwrap a value
#Playground {

    var count = 0
    var myoptional: Int? = 5

    if let myoptional = myoptional {
        count = count + myoptional  // 5
    }
}

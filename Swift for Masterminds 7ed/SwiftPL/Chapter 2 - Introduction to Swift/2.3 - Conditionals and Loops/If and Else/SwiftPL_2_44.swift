//
//  SwiftPL_2_44.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/25/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_2_44: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_2_44()
}

/// Listing 2-44: Using Optional Binding to unwrap an optional variable
#Playground {

    var count = 0
    var myoptional: Int? = 5

    if let uvalue = myoptional {
        count = count + uvalue  // 5
    }
}

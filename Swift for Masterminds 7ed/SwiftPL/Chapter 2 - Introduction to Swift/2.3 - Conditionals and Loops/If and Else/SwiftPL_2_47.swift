//
//  SwiftPL_2_47.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/25/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_2_47: View {

    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_2_47()
}

/// Listing 2-47: Checking multiple conditions with Optional Binding
#Playground {

    var count = 0
    var myoptional: Int? = 5

    if let uvalue = myoptional, uvalue == 5 {
        count = count + uvalue  // 5
    }
}

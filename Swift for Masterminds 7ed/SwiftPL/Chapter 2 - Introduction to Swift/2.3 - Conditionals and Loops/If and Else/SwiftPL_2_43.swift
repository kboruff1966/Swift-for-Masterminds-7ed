//
//  SwiftPL_2_43.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/25/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_2_43: View {

    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_2_43()
}

/// Listing 2-43: Checking whether an optional contains a value or not
#Playground {

    var count = 0
    var myoptional: Int? = 5

    if myoptional != nil {
        let uvalue = myoptional!
        count = count + uvalue  // 5
    }

}

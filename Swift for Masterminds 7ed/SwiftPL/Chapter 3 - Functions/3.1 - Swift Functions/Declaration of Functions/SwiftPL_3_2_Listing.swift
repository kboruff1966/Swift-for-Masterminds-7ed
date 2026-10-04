//
//  SwiftPL_3_2_Listing.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/3/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_3_2_Listing: View {

    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_3_2_Listing()
}

/// Listing 3-2: Calling functions from a loop
#Playground {

    func myfunction() {
        let mynumber = 5 * 2  // 10
    }

    var counter = 0

    while counter < 5 {
        myfunction()
        counter += 1
    }
}

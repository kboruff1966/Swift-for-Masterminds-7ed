//
//  Listing_5_9_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/25/26.
//

import Playgrounds
import SwiftUI

struct Listing_5_9_View: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Listing_5_9_View()
}

#Playground {

    enum Number: String {

        case one = "Number One"
        case two = "Number Two"
        case three = "Number Three"

        func getMessage() -> String {

            switch self {
            case .one:
                "We are the best"
            case .two:
                "We have to study more"
            case .three:
                "This is just the beginning"
            }
        }
    }

    var mynumber = Number.two
    print(mynumber.getMessage())
}

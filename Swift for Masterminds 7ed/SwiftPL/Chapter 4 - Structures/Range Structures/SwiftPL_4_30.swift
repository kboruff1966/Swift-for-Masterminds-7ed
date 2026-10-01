//
//  SwiftPL_4_30.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/25/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_4_30: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_4_30()
}

#Playground {

    /// Listing 4-30: Using for in to iterate over a range
    func L_4_30() {

        let total = (0...10).reduce(0, +)
        print("The total is \(total)")
    }

    /// Listing 4-31: Inverting a range
    func L_4_31() {

        let message = (0..<10)
            .reversed()
            .map(\.description)
            .joined(separator: " ")

        print(message)

    }

    /// Listing 4-32: Using range operators in a switch statement
    func L_4_32() {

        let age = Int.random(in: 2...80)

        let destination =
            switch age {
            case 2...4:
                "Day Care"
            case 5...11:
                "Elementary School"
            case 12...17:
                "High School"
            case 18...21:
                "College"
            case 22...61:
                "Work"
            case 62...:
                "Retirement"
            default:
                "Breastfeeding"
            }

        print(
            "You have to go to \"\(destination)\" because you're \(age) years old."
        )

    }

    func clampedToExample() {

        let range = (1...10)
        let otherRange = (-5...5)
        let clampedTo = range.clamped(to: otherRange)
        print(clampedTo)
    }

    L_4_30()
    L_4_31()
    L_4_32()
    clampedToExample()
}

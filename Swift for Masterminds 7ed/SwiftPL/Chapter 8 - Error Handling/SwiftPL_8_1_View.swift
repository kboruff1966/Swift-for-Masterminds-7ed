//
//  SwiftPL_8_1_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/19/26.
//

import SwiftUI

// Listing 8-1: Method producing an error
struct SwiftPL_8_1_View: View {

    struct Stock {

        var totalLamps = 5

        mutating func sold(amount: Int) {
            totalLamps = totalLamps - amount
        }
    }

    var body: some View {

        VStack(spacing: 10) {
            Text("Hello, world!")
            Button("Process") {
                var mystock = Stock()
                mystock.sold(amount: 8)
                print("Lamps in stock: \(mystock.totalLamps)")
            }
        }
        .font(.system(size: 30))
    }
}

#Preview {
    SwiftPL_8_1_View()
}

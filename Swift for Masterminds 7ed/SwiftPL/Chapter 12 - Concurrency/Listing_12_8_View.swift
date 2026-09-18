//
//  Listing_12_8_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-8: Defining a concurrent task
struct Listing_12_8_View: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button("Run Task") {
                Task { @concurrent in
                    sleep(5)
                    print("From concurrent task")
                }
            }
        }
        .font(.system(size: 30))
    }
}

#Preview {
    Listing_12_8_View()
}

//
//  Listing_12_1_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-1: Running a synchronous task
struct Listing_12_1_View: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button("Run Task") {
                let imageName = loadImage(name: "My Image")
                print(imageName)
            }
        }
        .font(.system(size: 30))
    }

    func loadImage(name: String) -> String {
        sleep(5)
        return "Name: \(name)"
    }
}

#Preview {
    Listing_12_1_View()
}

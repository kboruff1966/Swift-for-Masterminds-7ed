//
//  Listing_12_7_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-7: Processing a high demanding task in a background thread
struct Listing_12_7_View: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button("Run Task") {
                Task {
                    let imageName = await loadImage(name: "My Image")
                    print(imageName)
                }
            }
        }
        .font(.system(size: 30))
    }

    @concurrent
    func loadImage(name: String) async -> String {
        sleep(5)
        return "Name: \(name)"
    }
}

#Preview {
    Listing_12_7_View()
}

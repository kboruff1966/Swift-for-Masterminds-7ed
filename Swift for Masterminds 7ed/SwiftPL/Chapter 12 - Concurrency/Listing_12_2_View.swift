//
//  Listing_12_2_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-2: Running an asynchronous task
struct Listing_12_2_View: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, world!")

            Button("Run Task") {
                Task {
                    let imageName = await loadImage(name: "My Image")
                    print(imageName)
                }
            }
        }
        .font(.system(size: 30))
    }

    func loadImage(name: String) async -> String {
        try? await Task.sleep(for: .seconds(5))
        return "Name: \(name)"
    }
}

#Preview {
    Listing_12_2_View()
}

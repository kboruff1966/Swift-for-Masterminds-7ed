//
//  Listing_12_13_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-13: Running code in the Main Actor
struct Listing_12_13_View: View {

    @State private var message = "Hello, world!"

    var body: some View {
        VStack {
            Text(message)
                .padding()
            Button("Run Task") {
                Task {
                    await loadImage(name: "My Image")
                }
            }
        }
        .font(.system(size: 30))
    }

    @concurrent
    func loadImage(name: String) async {
        sleep(5)
        Task {
            await MainActor.run {
                message = "\(name)"
            }
        }
    }
}

#Preview {
    Listing_12_13_View()
}

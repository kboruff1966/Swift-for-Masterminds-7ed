//
//  SwiftPL_12_12_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/14/26.
//

import SwiftUI

/// Listing 12-12: Modifying the user interface from a background thread
struct SwiftPL_12_12_View: View {

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

    @concurrent func loadImage(name: String) async {
        sleep(5)
        Task { @MainActor in
            message = "\(name)"
        }
    }
}

#Preview {
    SwiftPL_12_12_View()
}

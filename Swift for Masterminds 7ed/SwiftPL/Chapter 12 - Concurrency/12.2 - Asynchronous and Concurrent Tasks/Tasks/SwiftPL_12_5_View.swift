//
//  SwiftPL_12_5_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/11/26.
//

import SwiftUI

/// Listing 12-5: Running a task when the view is loaded
struct SwiftPL_12_5_View: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
        }
        .task {
            let imageName = await loadImage(name: "My Image")
            print(imageName)
        }
    }

    func loadImage(name: String) async -> String {
        try? await Task.sleep(for: .seconds(5))
        return "Name: \(name)"
    }
}

#Preview {
    SwiftPL_12_5_View()
}

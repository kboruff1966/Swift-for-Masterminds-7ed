//
//  SwiftPL_12_19_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/15/26.
//

import SwiftUI

/// Listing 12-19: Defining a task group
struct SwiftPL_12_19_View: View {

    private let imageCount = 10
    private var images: [String] {
        (1...imageCount).map { "image\($0)" }
    }

    var body: some View {

        VStack {
            Text("Hello World!")
                .padding()
            Button("Run Task") {
                Task {

                    await withTaskGroup(of: String.self) { group in

                        for image in images {

                            group.addTask(priority: .background) {

                                let imageName = await self.loadImage(
                                    name: image
                                )

                                return imageName
                            }
                        }

                        for await result in group {
                            print(result)
                        }
                    }
                }

            }
        }.font(.system(size: 30))
    }

    func loadImage(name: String) async -> String {

        try? await Task.sleep(for: .seconds(3))
        return "Name: \(name)"
    }
}

#Preview {
    SwiftPL_12_19_View()
}

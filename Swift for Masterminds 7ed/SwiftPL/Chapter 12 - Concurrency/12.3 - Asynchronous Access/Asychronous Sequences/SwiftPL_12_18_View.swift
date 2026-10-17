//
//  SwiftPL_12_18_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/15/26.
//

import SwiftUI

/// Listing 12-18: Defining an asynchronous sequence
struct SwiftPL_12_18_View: View {

    let list = ["image1", "image2", "image3", "image4", "image5"]

    var body: some View {

        VStack {
            Text("Hello World!")
                .padding()
            Button("Run Task") {
                Task {
                    
                    let stream = AsyncStream { continuation in
                        Task {
                            for image in list {
                                continuation.yield(image)
                                try? await Task.sleep(for: .seconds(3))
                            }
                            continuation.finish()
                        }
                    }
                    
                    for await item in stream {
                        print(item)
                    }
                }
            }
        }
        .font(.system(size: 30))

    }
}

#Preview {
    SwiftPL_12_18_View()
}

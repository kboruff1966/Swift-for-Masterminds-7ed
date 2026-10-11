//
//  SwiftPL_12_1_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/10/26.
//

import SwiftUI

/// Listing 12-1: Running a synchronous task
struct SwiftPL_12_1_View: View {

    @State private var imageName = ""

    var body: some View {

        VStack(spacing: 10) {

            HStack {
                Button("Other Task") {
                    print("some other task")
                }
                .buttonStyle(.borderedProminent)

                Spacer()

                Button("Load Image") {
                    imageName = loadImage(name: nhlImageNames.randomElement()!)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()

            Image(imageName)
                .resizable()
                .scaledToFit()

        }
        .font(.system(size: 30))
    }

    func loadImage(name: String) -> String {
        sleep(5)
        return name
    }
}

#Preview {
    SwiftPL_12_1_View()
}

//
//  Listing_12_7_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-7: Processing a high demanding task in a background thread
struct SwiftPL_12_7_View: View {

    @State private var team = NHLTeamData.shared.teams.randomElement()!
    @State private var image: Image?

    var body: some View {
        VStack {

            Text(team.name)
                .font(.title)
                .padding()

            HStack {

                Button("Concurrent") {

                    image = nil

                    Task {

                        image = await loadImageConcurrent(
                            name: team.logo
                        )

                    }
                }
                .buttonStyle(.glassProminent)

                Spacer()

                Button("Non-Concurrent") {

                    image = nil
                    Task {
                        image = await loadImageNonConcurrent(
                            name: team.logo
                        )
                    }
                }
                .buttonStyle(.glassProminent)
            }

            if let image {
                image
                    .resizable()
                    .scaledToFit()
            } else {
                EmptyView()
            }
            
            Button("Other Task") {
                print("other task")
            }

            Spacer()
        }
        .padding()

    }

    @concurrent
    func loadImageConcurrent(name: String) async -> Image {

        let duration = UInt32.random(in: 3...8)

        print("Concurrent: sleep loadImage for \(duration) seconds")
        sleep(duration)

        return Image(name)
    }

    func loadImageNonConcurrent(name: String) async -> Image {

        let duration = UInt32.random(in: 3...8)

        print("Non-concurrent: sleep loadImage for \(duration) seconds")
        sleep(duration)

        return Image(name)
    }

}

#Preview {
    SwiftPL_12_7_View()
}

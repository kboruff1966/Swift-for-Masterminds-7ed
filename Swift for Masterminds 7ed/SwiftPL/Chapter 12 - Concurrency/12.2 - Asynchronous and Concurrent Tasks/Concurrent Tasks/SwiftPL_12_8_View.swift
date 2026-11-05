//
//  Listing_12_8_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI
import NHL

// Listing 12-8: Defining a concurrent task
struct SwiftPL_12_8_View: View {

    @State private var team: NHLTeam?
    @State private var image: Image?

    var body: some View {
        VStack {

            Text(team?.name ?? "")
                .padding()
                .font(.title)

            Button("Run Task") {
                Task {
                    team = NHLTeamData.shared.teams.randomElement()!
                    image = await loadImage(name: team?.logo ?? "")
                }
            }

            if let image {
                image
                    .resizable()
                    .scaledToFit()
            }

            Spacer()
        }

    }

    @concurrent
    func loadImage(name: String) async -> Image {

        let duration = UInt32.random(in: 3...8)

        print("Non-concurrent: sleep loadImage for \(duration) seconds")
        sleep(duration)

        return Image(name)
    }

}

#Preview {
    SwiftPL_12_8_View()
}

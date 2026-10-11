//
//  Listing_12_4_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-4: Running asynchronous tasks sequentially
struct SwiftPL_12_4_View: View {

    @State private var nhlTeamData = NHLTeamData.shared

    @State private var image: Image?
    @State private var infoView: AnyView?

    fileprivate func clearData() {
        image = nil
        infoView = nil
    }

    var body: some View {
        VStack {
            Button("Run Tasks") {

                clearData()

                Task {
                    let team = nhlTeamData.teams.randomElement()!
                    image = await loadImage(name: team.logo)
                    infoView = AnyView(await loadInfoView(team: team))
                }

                print("This runs outside the tasks")
            }
            .buttonStyle(.borderedProminent)

            image?
                .resizable()
                .scaledToFit()

            infoView?
                .padding()

            Spacer()
        }
        .padding()
    }

    func loadImage(name: String) async -> Image {

        let duration = Int.random(in: 1...5)

        print("sleep loadImage for \(duration) seconds")
        try? await Task.sleep(for: .seconds(duration))

        return Image(name)
    }

    func loadInfoView(team: NHLTeam) async -> some View {

        let duration = Int.random(in: 1...5)

        print("sleep loadTeam for \(duration) seconds")
        try? await Task.sleep(for: .seconds(duration))

        return VStack(spacing: 5) {

            Text(team.name)
                .font(.title)
            Text(team.arena)
                .font(.caption)
                .padding([.bottom], 20)

            Text("\(team.division.rawValue) Division")
                .font(.subheadline)
            Text("Coach: \(team.coach)")
                .font(.subheadline)
                .padding([.bottom], 20)

            ForEach(team.players) { player in
                Text(
                    "\(player.name) (\(player.position.rawValue) #\(player.number))"
                )
                .font(.caption)
            }
        }
    }
}

#Preview {
    SwiftPL_12_4_View()
}

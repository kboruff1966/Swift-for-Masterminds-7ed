//
//  Listing_12_3_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

// Listing 12-3: Running multiple asynchronous tasks
struct SwiftPL_12_3_View: View {

    @State private var nhlTeamData = NHLTeamData.shared

    @State private var image: Image?
    @State private var infoView: AnyView?
    @State private var hasStartedLoading = false
    @State private var loadStartTime = Date.now

    fileprivate func clearData() {
        image = nil
        infoView = nil
    }

    var body: some View {
        VStack {
            Button("Get NHL Team") {

                clearData()
                hasStartedLoading = true
                loadStartTime = .now
                let team = nhlTeamData.teams.randomElement()!

                Task {
                    image = await loadImage(name: team.logo)
                }

                Task {
                    infoView = AnyView(await loadInfoView(team: team))
                }
            }
            .buttonStyle(.borderedProminent)

            if let image {
                image
                    .resizable()
                    .scaledToFit()
            } else if hasStartedLoading {
                TimelineView(.periodic(from: loadStartTime, by: 1)) { context in
                    let elapsedSeconds = Int(
                        context.date.timeIntervalSince(loadStartTime)
                    )
                    ProgressView("Loading image… (\(elapsedSeconds)s)")
                }
            }

            if let infoView {
                infoView
                    .padding()
            } else if hasStartedLoading {
                TimelineView(.periodic(from: loadStartTime, by: 1)) { context in
                    let elapsedSeconds = Int(
                        context.date.timeIntervalSince(loadStartTime)
                    )
                    ProgressView("Loading team info… (\(elapsedSeconds)s)")
                }
            }

            Spacer()
        }
        .padding()
    }

    func loadImage(name: String) async -> Image {

        let duration = Int.random(in: 3...8)

        print("sleep loadImage for \(duration) seconds")
        try? await Task.sleep(for: .seconds(duration))

        return Image(name)
    }

    func loadInfoView(team: NHLTeam) async -> some View {

        let duration = Int.random(in: 3...8)

        print("sleep loadTeam for \(duration) seconds")
        try? await Task.sleep(for: .seconds(duration))

        return VStack(spacing: 5) {

            Text(team.name)
                .font(.title)
            Text(team.arena)
                .font(.caption)

            Text("\(team.division.rawValue) Division")
                .font(.subheadline).bold()
                .padding([.bottom], 20)

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
    SwiftPL_12_3_View()
}

//
//  SwiftPL_12_2_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/10/26.
//

import SwiftUI

/// Listing 12-2: Running an asynchronous task
struct SwiftPL_12_2_View: View {

    @State private var team = NHLTeamData.shared.teams.randomElement()!

    @State private var image: Image?
    @State private var infoView: AnyView?

    @State private var imageHasStartedLoading = false
    @State private var dataHasStartedLoading = false

    @State private var imageLoadStartTime = Date.now
    @State private var dataLoadStartTime = Date.now

    var body: some View {

        VStack(spacing: 10) {

            Text(team.name)
                .font(.title)

            HStack {
                Button("Load Data") {
                    Task {

                        dataHasStartedLoading = true
                        dataLoadStartTime = .now

                        infoView = AnyView(await loadInfoView(team: team))
                    }
                }
                .buttonStyle(.borderedProminent)

                Spacer()

                Button("Load Logo") {
                    Task {

                        imageHasStartedLoading = true
                        imageLoadStartTime = .now

                        image = await loadImage(name: team.logo)
                    }
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()

            if let image {
                image
                    .resizable()
                    .scaledToFit()

            } else if imageHasStartedLoading {
                TimelineView(.periodic(from: imageLoadStartTime, by: 1)) {
                    context in
                    let elapsedSeconds = Int(
                        context.date.timeIntervalSince(imageLoadStartTime)
                    )
                    ProgressView("Loading image… (\(elapsedSeconds)s)")
                }
            }

            if let infoView {
                infoView
                    .padding()
            } else if dataHasStartedLoading {
                TimelineView(.periodic(from: dataLoadStartTime, by: 1)) {
                    context in
                    let elapsedSeconds = Int(
                        context.date.timeIntervalSince(dataLoadStartTime)
                    )
                    ProgressView("Loading team info… (\(elapsedSeconds)s)")
                }
            }

            Spacer()
        }
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
    SwiftPL_12_2_View()
}

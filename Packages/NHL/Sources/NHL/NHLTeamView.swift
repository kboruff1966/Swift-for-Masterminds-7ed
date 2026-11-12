//
//  SwiftUI_4_44a.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/10/26.
//

import SwiftUI

public struct NHLTeamView: View {

    @State private var teamData = NHLTeamData.shared
    @State private var sort = [KeyPathComparator(\NHLTeam.name)]

    public init() {

    }

    public var body: some View {
        Table(teamData.teams, sortOrder: $sort) {
            TableColumn("Name", value: \.name) { team in
                HStack {
                    Image(team.logo, bundle: .module)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 80)
                    Text(team.name)
                        .lineLimit(2)
                }
                .padding()
            }

            TableColumn("Arena", value: \.arena)
            TableColumn("Coach", value: \.coach)
        }
        .onChange(of: sort) {
            teamData.teams.sort(using: sort)
        }
    }
}

#Preview {
    NHLTeamView()
}

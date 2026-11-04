//
//  SwiftUI_5_57_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/2/26.
//

import SwiftUI
import TipKit

// Listing 5-57: Presenting a tip
struct SwiftUI_5_57_View: View {

    let tipButton = TipButton()

    var body: some View {
        VStack {
            Button("Save") {
                print("Action Performed")
            }
            // Listing 5-58: Presenting a tip in a popover
            // .popoverTip(tipButton)

            TipView(tipButton)

        }
        .padding()
        .task {

            try? Tips.configure([
                .displayFrequency(.immediate),
                .datastoreLocation(.applicationDefault),
            ])

            Tips.showAllTipsForTesting()
        }

        Spacer()
    }
}

#Preview {
    //    try? Tips.resetDatastore()
    //    try? Tips.configure([.displayFrequency(.immediate)])
    return SwiftUI_5_57_View()
}

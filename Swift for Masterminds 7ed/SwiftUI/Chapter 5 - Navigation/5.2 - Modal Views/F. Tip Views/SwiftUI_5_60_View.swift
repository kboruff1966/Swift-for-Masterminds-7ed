//
//  SwiftUI_5_60_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/2/26.
//

import SwiftUI
import TipKit

/// Listing 5-60: Invalidating a tip
struct SwiftUI_5_60_View: View {

    let tipButton = TipButton()

    var body: some View {
        VStack {
            Button("Save") {
                print("Action Performed")
                tipButton.invalidate(reason: .actionPerformed)
            }
            // .popoverTip(tipButton)
            // Listing 5-63: Performing an action
            .popoverTip(
                tipButton,
                action: { action in
                    if action.id == "tipButton" { print("Help") }
                }
            )
        }
        .padding()
        .task {
            try? Tips.configure([.displayFrequency(.daily)])
            Tips.showAllTipsForTesting()
        }
        Spacer()
    }

}

#Preview {
    SwiftUI_5_60_View()
}

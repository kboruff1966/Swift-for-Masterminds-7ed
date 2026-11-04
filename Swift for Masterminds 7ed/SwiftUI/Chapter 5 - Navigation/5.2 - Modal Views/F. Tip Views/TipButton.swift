//
//  TipButton.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/2/26.
//

import SwiftUI
import TipKit

/// Listing 5-56: Defining a tip
struct TipButton: Tip {

    var title: Text {
        Text("Press to Save")
    }

    var message: Text? {
        Text("Press this button to save your progress.")
    }

    var actions: [Action] {
        [Action(id: "tipButton", title: "More Into")]
    }
}

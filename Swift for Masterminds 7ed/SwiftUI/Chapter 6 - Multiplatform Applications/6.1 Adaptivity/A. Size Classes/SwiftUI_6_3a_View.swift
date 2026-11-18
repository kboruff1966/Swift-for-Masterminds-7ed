//
//  SwiftUI_6_3a_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/13/26.
//

import SwiftUI

struct SwiftUI_6_3a_View: View {

    @Environment(\.horizontalSizeClass) private var hSize

    var body: some View {

        Group {
            switch hSize {
            case .regular:
                NavigationSplitView {
                    Text("Menu for large window")
                } detail: {
                    Text("Content for large window")
                }
            default:
                // Covers .compact, nil (size class unavailable), and any future cases
                NavigationStack {
                    Text("Interface for small window")
                }
            }
        }
    }
}

#Preview {
    SwiftUI_6_3a_View()
}

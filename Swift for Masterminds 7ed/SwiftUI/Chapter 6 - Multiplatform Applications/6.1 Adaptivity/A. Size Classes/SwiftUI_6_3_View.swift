//
//  SwiftUI_6_3_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/12/26.
//

import MyLibrary
import SwiftUI

// Listing 6-3: Updating the app's interface to the horizontal size class
struct SwiftUI_6_3_View: View {

    @Environment(ApplicationData.self) private var appData
    @Environment(\.horizontalSizeClass) private var hSize

    var body: some View {

        Group {
            switch appData.mode {
            case .small:
                NavigationStack {
                    Text("Interface for small window")
                }
            case .large:
                NavigationSplitView {
                    Text("Menu for large window")
                } detail: {
                    Text("Content for large window")
                }
            }
        }
        .onAppear {
            appData.update(horizontalSizeClass: hSize)
        }
        .onChange(of: hSize) { _, new in
            appData.update(horizontalSizeClass: new)
        }
    }
}

#Preview {
    SwiftUI_6_3_View()
        .environment(ApplicationData.shared)
}

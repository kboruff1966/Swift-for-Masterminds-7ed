//
//  SwiftUI_6_35_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/17/26.
//

import SwiftUI
import MyLibrary

// Listing 6-35: Creating a list with alternate background
struct SwiftUI_6_35_View: View {
    
    @State private var appData = ApplicationData.shared

    var body: some View {
        List {
            ForEach(appData.foodList, id: \.self) { item in
                Text(item)
            }
        }
        .navigationTitle("Food List")

        #if os(macOS)
            .alternatingRowBackgrounds()
        #endif
    }
}

#Preview {
    SwiftUI_6_35_View()
}

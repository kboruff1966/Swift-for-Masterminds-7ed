//
//  DetailView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/16/26.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Details")
                .padding()
            Spacer()
        }
        .navigationTitle("My Title")
        .navigationSubtitle("My Subtitle")
        .toolbarTitleDisplayMode(.inlineLarge)
        #if os(macOS)
            .ignoresSafeArea()
            .toolbar(removing: .title)
            .toolbarBackgroundVisibility(.hidden, for: .windowToolbar)

        #endif
        .toolbar {

            #if os(macOS)
                ToolbarItem(placement: .primaryAction) {
                    Button(
                        "Add Item",
                        systemImage: "plus",
                        action: { print("Add Item") }
                    )
                }
            #else
                ToolbarItem(placement: .topBarTrailing) {
                    Button(
                        "Add Item",
                        systemImage: "plus",
                        action: { print("Add Item") }
                    )
                }
            #endif
        }
    }
}

#Preview {
    DetailView()
}

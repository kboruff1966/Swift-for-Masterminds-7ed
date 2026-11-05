//
//  SwiftUI_5_49_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/26/26.
//

import SwiftUI
import BookData1

/// Listing 5-49: Presenting the inspector
struct SwiftUI_5_49_View: View {

    @Environment(BookData.self) private var appData
    @State private var presentInspector: Bool = false

    private var inspectorIcon: String {
        presentInspector ? "xmark.circle" : "info.circle"
    }

    var body: some View {
        NavigationStack {
            List(appData.userData) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbarTitleDisplayMode(.inlineLarge)
            .toolbar {
                Button(
                    action: {
                        presentInspector.toggle()
                    },
                    label: {
                        Image(systemName: inspectorIcon)
                    }
                )
            }
            .inspector(isPresented: $presentInspector) {
                InspectorView()
                    // Listing 5-50: Defining the size of the inspector
                    .inspectorColumnWidth(min: 200, ideal: 250, max: 300)
            }
        }
    }
}

#Preview {
    SwiftUI_5_49_View()
        .environment(BookData.shared)
}

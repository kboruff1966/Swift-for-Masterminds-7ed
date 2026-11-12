//
//  SwiftUI_5_42_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/25/26.
//

import BookData1
import SwiftUI

/// Listing 5-42: Displaying a sheet
struct SwiftUI_5_42_View: View {

    @Environment(BookData.self) private var appData
    @State private var showSheet: Bool = false

    var body: some View {
        NavigationStack {
            List(appData.books) { book in
                BookView(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbarTitleDisplayMode(.inlineLarge)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(
                        "Add Book",
                        systemImage: "plus",
                        action: { showSheet = true }
                    )
                }
            }
            .sheet(isPresented: $showSheet) {
                AddBookView()

                    // Listing 5-44: Assigning a predefined height
                    .presentationDetents([.height(250)])

                    // Listing 5-45: Assigning a custom background
                    .presentationBackground(.thinMaterial)

                // Listing 5-46: Declaring the size of the sheet
                // .frame(width: 350, height: 250)
                // .presentationSizing(.fitted)

            }
        }
    }
}

#Preview {
    SwiftUI_5_42_View()
        .environment(BookData.shared)
}

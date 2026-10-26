//
//  SwiftUI_5_47_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/26/26.
//

import SwiftUI

struct SwiftUI_5_47_View: View {

    @Environment(BookData.self) private var appData
    @State private var showSheet: Bool = false
    @State private var editItem: Book?

    var body: some View {
        NavigationStack {
            List(appData.userData) { book in
                CellBook(book: book)
                    .background(.white)
                    .onTapGesture {
                        editItem = book
                    }
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
            }
            .sheet(item: $editItem) { item in
                AddBookView(book: item)
            }
        }
    }
}

#Preview {
    SwiftUI_5_47_View()
        .environment(BookData.shared)
}

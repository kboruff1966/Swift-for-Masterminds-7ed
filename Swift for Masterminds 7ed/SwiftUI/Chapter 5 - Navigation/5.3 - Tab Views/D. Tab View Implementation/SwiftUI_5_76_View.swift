//
//  SwiftUI_5_76_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/3/26.
//

import SwiftUI

/// Listing 5-76: Designing a TabView view to manage books
struct SwiftUI_5_76_View: View {

    var body: some View {
        TabView {
            Tab("Home", systemImage: "book.circle") {
                BooksView()
            }
            Tab("Settings", systemImage: "gear") {
                SettingsView()
            }
            Tab(role: .search) {
                SearchView()
            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }

    struct BooksView: View {

        @Environment(BookDataWithFilter.self) private var appData

        var body: some View {
            List(appData.userData) { book in
                CellBook2(book: book)
            }
        }
    }

    struct SettingsView: View {

        @Environment(BookDataWithFilter.self) private var appData

        var body: some View {

            @Bindable var appData = appData

            Form {
                Section(
                    header: Text("Settings"),
                    footer: Text("Select what you want to see")
                ) {
                    Toggle("Show Pictures", isOn: $appData.showPictures)
                    Toggle("Show Year", isOn: $appData.showYear)
                }
            }
        }
    }

    struct SearchView: View {

        @Environment(BookDataWithFilter.self) private var appData
        @State private var searchBook: String = ""

        var body: some View {
            VStack {
                TextField("Insert Title", text: $searchBook)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                List(appData.filteredItems) { book in
                    CellBook(book: book)
                }
            }
            .onChange(
                of: searchBook,
                initial: true,
                { appData.filterValues(search: searchBook) }
            )
        }
    }

}

#Preview {
    SwiftUI_5_76_View()
        .environment(BookDataWithFilter.shared)
}

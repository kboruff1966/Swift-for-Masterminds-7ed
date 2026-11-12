//
//  ListAuthorsView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/7/26.
//

import SwiftData
import SwiftUI

public struct ListAuthorsView: View {

    @Environment(ApplicationData.self) private var appData
    @Query private var authorsList: [Author]
    @State private var selection: Author.ID? = nil

    public init() {

    }

    public var body: some View {
        List(authorsList, selection: $selection) { author in
            Text(author.name)
        }
        .onChange(of: selection, initial: false) { old, idAuthor in
            appData.selectedAuthor = authorsList.first(where: {
                $0.id == idAuthor
            })
            appData.viewPath.removeLast()
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink(
                    value: "Add Author",
                    label: { Image(systemName: "plus") }
                )
            }
        }
    }
}

#Preview {
    NavigationStack {
        ListAuthorsView()
            .environment(ApplicationData.shared)
            .modelContainer(for: [Book.self, Author.self], inMemory: true)
    }
}

#Preview("Data", traits: .modifier(PreviewData())) {
    NavigationStack {
        ListAuthorsView()
            .environment(ApplicationData.shared)
    }
}

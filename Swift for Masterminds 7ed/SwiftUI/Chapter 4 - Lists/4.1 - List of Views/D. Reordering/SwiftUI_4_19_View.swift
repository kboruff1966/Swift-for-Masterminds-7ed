//
//  SwiftUI_4_19_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/27/26.
//

import SwiftUI
import BookData1

/// Listing 4-19: Reordering the items in a grid
struct SwiftUI_4_19_View: View {

    @Environment(BookData.self) private var appData

    let guides = [GridItem(.adaptive(minimum: 75))]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: guides) {
                ForEach(appData.books) { book in
                    Image(book.cover)
                        .resizable()
                        .scaledToFit()
                }
                .reorderable()
            }
            .reorderContainer(
                for: Book.self,
                move: { diff in

                    guard
                        let sourceIndex = appData.books.firstIndex(
                            where: {
                                $0.id == diff.sources[0]
                            })
                    else {
                        return
                    }

                    let element = appData.books.remove(at: sourceIndex)

                    let destinationIndex =
                        switch diff.destination.position {
                        case .end:
                            appData.books.endIndex
                        case .before(let id):
                            appData.books.firstIndex(
                                where: {
                                    $0.id == id
                                })
                        }

                    if let destinationIndex {
                        appData.books.insert(element, at: destinationIndex)
                    }
                }
            )
        }
        .padding()
    }
}

#Preview {
    SwiftUI_4_19_View()
        .environment(BookData.shared)
}

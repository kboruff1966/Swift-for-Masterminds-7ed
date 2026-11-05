//
//  SwiftUI_4_13_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/27/26.
//

import SwiftUI
import BookData1

/// Listing 4-13: Scrolling the content programmatically
struct SwiftUI_4_13_View: View {

    @Environment(BookData.self) private var appData

    @State private var position = ScrollPosition(idType: Book.ID.self)
    @State private var title: String = ""

    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 0) {
                    ForEach(appData.userData) { book in
                        CellBook(book: book).containerRelativeFrame(
                            .horizontal,
                            count: 2,
                            span: 1,
                            spacing: 0
                        )
                    }
                    Button("< Back") {
                        position.scrollTo(edge: .top)
                    }
                    .buttonStyle(.glassProminent)
                    .padding([.leading, .trailing], 55)
                }
                .scrollTargetLayout()
            }
            .scrollPosition($position)
            .scrollTargetBehavior(.viewAligned)
            .frame(height: 300)
            .onChange(
                of: position,
                initial: true
            ) {
                if let selected = position.viewID as? UUID {
                    if let book = appData.userData.first(where: {
                        $0.id == selected
                    }) {
                        title = book.title
                    }
                }
            }

            Text(title)
                .font(.title)
                .padding()
            
            Spacer()
        }
    }

    struct CellBook: View {

        let book: Book

        var body: some View {
            VStack {
                Image(book.cover)
                    .resizable()
                    .scaledToFit()
                Text(book.title)
                    .font(.caption)
            }
            .padding(10)
        }
    }

}

#Preview {
    SwiftUI_4_13_View()
        .environment(BookData.shared)
}

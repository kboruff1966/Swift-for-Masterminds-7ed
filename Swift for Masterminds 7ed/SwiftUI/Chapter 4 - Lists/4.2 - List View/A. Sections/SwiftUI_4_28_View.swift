//
//  SwiftUI_4_28_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import SwiftUI
import BookData1

/// Listing 4-28: Providing an ordered list of values
struct SwiftUI_4_28_View: View {

    @Environment(BookData.self) private var appData

    var orderList: [(key: String, value: [Book])] {

        let listGroup: [String: [Book]] = Dictionary(
            grouping: appData.userData,
            by: { value in
                let index = value.title.startIndex
                let initial = value.title[index]
                return String(initial)
            }
        )

        return listGroup.sorted(by: { $0.key < $1.key })
    }

    var body: some View {
        List {
            ForEach(orderList, id: \.key) { section in
                Section(header: Text(section.key)) {
                    ForEach(section.value) { book in
                        CellBook(book: book)
                    }
                }
                .headerProminence(.increased)
                .sectionIndexLabel(section.key)
            }
        }
    }
}

#Preview {
    SwiftUI_4_28_View()
        .environment(BookData.shared)
}

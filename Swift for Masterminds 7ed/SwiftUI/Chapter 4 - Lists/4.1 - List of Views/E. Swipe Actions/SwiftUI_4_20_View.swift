//
//  SwiftUI_4_20_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/28/26.
//

import SwiftUI
import BookData1

/// Listing 4-20: Adding swipe actions to the rows of a list
struct SwiftUI_4_20_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(appData.userData) { book in
                    HStack {
                        Text(book.title)
                            .padding(8)
                        Spacer()
                    }
                    .swipeActions {
                        Button(
                            role: .destructive,
                            action: {
                                appData.userData.removeAll(
                                    where: { $0.id == book.id })
                            },
                            label: { Image(systemName: "trash") }
                        )
                    }
                    Divider()
                }
            }
            .swipeActionsContainer()
        }
        .padding()
    }

}

#Preview {
    SwiftUI_4_20_View()
        .environment(BookData.shared)
}

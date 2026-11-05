//
//  SwiftUI_4_6_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/27/26.
//

import SwiftUI
import BookData1

/// Listing 4-6: Creating a scrollable list of views
struct SwiftUI_4_6_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(appData.userData) { book in
                    VStack {
                        HStack(alignment: .top) {
                            Image(book.cover).resizable().scaledToFit().frame(
                                width: 80,
                                height: 100
                            )
                            VStack(alignment: .leading, spacing: 2) {
                                Text(book.title)
                                    .bold()
                                Text(book.author)
                                Text(book.displayYear)
                                    .font(.caption)
                            }
                            .padding(.top, 5)
                            Spacer()
                        }
                        .padding([.leading, .trailing], 10)
                        .padding([.top, .bottom], 5)
                        Divider()
                    }
                }
            }
        }
    }

}

#Preview {
    SwiftUI_4_6_View()
        .environment(BookData.shared)
}

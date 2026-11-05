//
//  SwiftUI_4_4_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/6/26.
//

import SwiftUI
import BookData1
import MyLibrary

/// Listing 4-5: Creating a list of views with data from the model
struct SwiftUI_4_5_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        VStack {
            ForEach(appData.userData) { book in
                VStack {
                    HStack(alignment: .top) {
                        Image(book.cover)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 100)

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
                }

                Divider()
            }
        }
        Spacer()
    }
}

#Preview {
    SwiftUI_4_5_View()
        .environment(BookData.shared)
}

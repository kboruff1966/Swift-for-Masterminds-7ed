//
//  SwiftUI_4_16_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/27/26.
//

import SwiftUI
import BookData1

/// Listing 4-16: Creating a grid with a fixed number of items
struct SwiftUI_4_16_View: View {

    @Environment(BookData.self) private var appData

    //        let guides = [
    //            GridItem(.fixed(75)),
    //            GridItem(.fixed(75)),
    //            GridItem(.fixed(75)),
    //        ]

    /// Listing 4-17: Defining flexible items
    //        let guides = [
    //            GridItem(.flexible(minimum: 75), alignment: .top),
    //            GridItem(.flexible(minimum: 75), alignment: .top),
    //            GridItem(.flexible(minimum: 75), alignment: .top),
    //        ]

    /// Listing 4-18: Defining adaptive items
    let guides = [GridItem(.adaptive(minimum: 75))]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: guides) {
                ForEach(appData.books) { book in
                    Image(book.cover)
                        .resizable()
                        .scaledToFit()
                }
            }
        }
        .padding()
    }

}

#Preview {
    SwiftUI_4_16_View()
        .environment(BookData.shared)
}

//
//  SwiftUI_4_7_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/27/26.
//

import SwiftUI

/// Listing 4-7: Configuring the scroll view
struct SwiftUI_4_7_View: View {

    @Environment(BookData.self) private var appData
    @State private var title: String = ""

    var body: some View {
        VStack {

            TextField("Title", text: $title)
                .textFieldStyle(.roundedBorder)
                .padding()

            ScrollView {
                LazyVStack {
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
                            .padding([.leading, .trailing], 10)
                            .padding([.top, .bottom], 5)
                            Divider()
                        }
                    }
                }
            }
            .scrollDismissesKeyboard(.immediately)
            .scrollIndicatorsFlash(onAppear: true)
        }
    }

}

#Preview {
    SwiftUI_4_7_View()
        .environment(BookData.shared)
}

//
//  DetailView3.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/21/26.
//

import SwiftUI

public struct DetailBookView: View {

    @Environment(BookData.self) private var appData
    var book: Book
    
    public init(book: Book) {
        self.book = book
    }

    public var body: some View {
        VStack {
            Text(book.title)
                .font(.title)
            Text(book.author)
            Button(
                action: {
                    appData.selectedBook = book
                    appData.viewPath.append("Picture View")
                },
                label: {
                    Image(book.cover)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                }
            )
            Spacer()
        }
        .padding()
        .navigationTitle(Text("Book"))
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Back") {
                    appData.viewPath.removeLast()
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var navigation = NavigationPath()
    NavigationStack {
        DetailBookView(book: BookData.shared.userData[0])
            .environment(BookData.shared)
    }
}

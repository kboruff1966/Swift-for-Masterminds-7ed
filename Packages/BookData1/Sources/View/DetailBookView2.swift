//
//  DetailView2.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/20/26.
//

import SwiftUI

public struct DetailBookView2: View {

    @Binding var viewPath: NavigationPath
    var book: Book
    
    public init(viewPath: Binding<NavigationPath>, book: Book) {
        self._viewPath = viewPath
        self.book = book
    }

    public var body: some View {
        VStack {
            Text(book.title)
                .font(.title)
            Text(book.author)
            Image(book.cover, bundle: .module)
                .resizable()
                .scaledToFit()
            Spacer()
        }
        .padding()
        .navigationTitle(Text("Book"))
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Back") {
                    viewPath.removeLast()
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var navigation = NavigationPath()
    NavigationStack {
        DetailBookView2(viewPath: $navigation, book: BookData.shared.books[0])
    }
}

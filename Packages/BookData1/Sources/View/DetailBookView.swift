//
//  DetailView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/3/26.
//

import SwiftUI

public struct DetailBookView: View {

    @Environment(\.dismiss) private var dismiss

    /// Optional path binding. If provided, the system back button is replaced
    /// with a custom one that pops the path; otherwise the system button is used.
    private var viewPath: Binding<NavigationPath>?
    let book: Book

    public init(viewPath: Binding<NavigationPath>? = nil, book: Book) {
        self.viewPath = viewPath
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
            // Path-driven layout pins content to the top
            if viewPath != nil {
                Spacer()
            }
        }
        .padding()
        .navigationTitle("Book")
        .toolbarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(viewPath != nil)
        .toolbar {
            if let viewPath {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Back") {
                        if !viewPath.wrappedValue.isEmpty {
                            viewPath.wrappedValue.removeLast()
                        } else {
                            dismiss()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        DetailBookView(book: BookData.shared.books[0])
    }
}

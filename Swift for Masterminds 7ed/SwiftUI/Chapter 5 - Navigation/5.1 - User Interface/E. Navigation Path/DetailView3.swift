//
//  DetailView3.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/21/26.
//

import SwiftUI

struct DetailView3: View {

    @Environment(BookData.self) private var appData
    var book: Book

    var body: some View {
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
        DetailView3(book: BookData.shared.userData[0])
            .environment(BookData.shared)
    }
}

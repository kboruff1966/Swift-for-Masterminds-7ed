//
//  DetailView2.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/20/26.
//

import SwiftUI

struct DetailView2: View {

    @Binding var viewPath: NavigationPath
    var book: Book

    var body: some View {
        VStack {
            Text(book.title)
                .font(.title)
            Text(book.author)
            Image(book.cover)
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
        DetailView2(viewPath: $navigation, book: BookData.shared.userData[0])
    }
}

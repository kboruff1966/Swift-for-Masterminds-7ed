//
//  PictureView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/21/26.
//

import SwiftUI
import BookData3

struct PictureView: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        VStack {
            Image(appData.selectedBook?.cover ?? "nopicture")
                .resizable()
                .scaledToFit()
            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Back to List") {
                    appData.viewPath = NavigationPath()
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("Back") {
                    appData.viewPath.removeLast()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        PictureView()
            .environment(BookData.shared)
    }
}

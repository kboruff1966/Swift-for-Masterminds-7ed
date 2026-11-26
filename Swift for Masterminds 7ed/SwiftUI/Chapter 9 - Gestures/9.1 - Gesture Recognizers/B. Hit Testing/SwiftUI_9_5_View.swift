//
//  SwiftUI_9_5_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/24/26.
//

import SwiftUI

// Listing 9-5: Defining the shape of the content
struct SwiftUI_9_5_View: View {

    @State private var selected = false

    var body: some View {
        VStack {
            HStack(alignment: .top) {

                Image(.spot1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 100)
                    .border(selected ? .yellow : .clear, width: 5)

                VStack(alignment: .leading, spacing: 2) {
                    Text("Balmy Beach")
                        .bold()
                    Text("Toronto")
                    Text("2020")
                        .font(.caption)
                    Spacer()
                }

                Spacer()
            }
            .frame(height: 100)
            .padding(5)
            .border(.gray, width: 1)
            .contentShape(Rectangle())
            .onTapGesture {
                selected.toggle()
            }

            Spacer()
        }
    }
}

#Preview {
    SwiftUI_9_5_View()
}

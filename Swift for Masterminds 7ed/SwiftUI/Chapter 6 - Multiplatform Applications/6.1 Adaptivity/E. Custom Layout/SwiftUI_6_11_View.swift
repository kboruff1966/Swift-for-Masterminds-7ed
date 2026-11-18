//
//  SwiftUI_6_11_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/14/26.
//

import SwiftUI

// Listing 6-11: Selecting a layout
struct SwiftUI_6_11_View: View {

    @State private var selected: Bool = true

    var body: some View {

        let SelectedLayout =
            selected ? AnyLayout(MyLayout()) : AnyLayout(HStackLayout())

        VStack {

            Button("Change Layout") {
                selected.toggle()
            }
            .buttonStyle(.glass)
            .padding()

            SelectedLayout {
                Group {
                    Text("First")
                    Text("Second")
                    Text("Third")
                }
                .padding(10)
                .background(.red)
            }

            Spacer()
        }
        .padding()
        .font(.title)
    }

}

#Preview {
    SwiftUI_6_11_View()
}

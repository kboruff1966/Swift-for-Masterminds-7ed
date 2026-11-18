//
//  SwiftUI_3_9_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/23/26.
//

import SwiftUI

struct SwiftUI_3_9_View: View {

    @State private var colorActive = false

    var body: some View {
        VStack(spacing: 10) {

            Text("Default Title")
                .padding()
                .background(colorActive ? .green : .clear)

            Button("Change Color") {
                colorActive.toggle()
            }
            
            Button("Change Color", action: changeColor)

            Spacer()

        }
        .padding()
    }

    func changeColor() {
        colorActive.toggle()
    }
}

#Preview {
    SwiftUI_3_9_View()
}

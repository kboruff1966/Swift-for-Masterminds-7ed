//
//  SwiftUI_3_20_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import SwiftUI

struct MyStyle: ButtonStyle {

    func makeBody(configuration: MyStyle.Configuration) -> some View {
        let pressed = configuration.isPressed
        return configuration.label
            .padding()
            .border(Color.green, width: 5)
            .scaleEffect(pressed ? 1.2 : 1.0)
    }
}

/// Listing 3-20: Defining custom styles for the button
struct SwiftUI_3_20_View: View {

    @State private var color = Color.gray

    var body: some View {
        VStack {
            Text("Default Title")
                .padding()
                .foregroundStyle(color)
            Button("Change Color") {
                color = Color.green
            }
            .buttonStyle(MyStyle())
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_20_View()
}

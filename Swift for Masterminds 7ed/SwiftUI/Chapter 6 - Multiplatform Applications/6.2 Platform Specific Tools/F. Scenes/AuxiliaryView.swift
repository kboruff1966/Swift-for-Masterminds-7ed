//
//  AuxiliaryView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/17/26.
//

import SwiftUI

struct AuxiliaryView: View {

    @Environment(\.dismissWindow) var dismissWindow

    var body: some View {
        VStack {
            Text("Auxiliary View")
                .padding()
            Button("Close Window") {
                dismissWindow(id: "mywindow")
            }
            .buttonStyle(.bordered)
        }
//        .frame(
//            minWidth: 300,
//            maxWidth: .infinity,
//            minHeight: 200,
//            maxHeight: .infinity
//        )
        .frame(width: 300, height: 200)
    }
}

#Preview {
    AuxiliaryView()
}

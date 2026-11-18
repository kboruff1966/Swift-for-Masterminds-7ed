//
//  SwiftUI_6_26_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/16/26.
//

import MyLibrary
import SwiftUI

struct SwiftUI_6_26_View: View {

    @State private var appData = ApplicationData.shared

    var body: some View {
        VStack {
            TextField("Insert your Name", text: $appData.inputMessage)
                .textFieldStyle(.roundedBorder)
            TextField("Insert Address", text: $appData.inputAddress)
                .textFieldStyle(.roundedBorder).focusedValue(
                    \.address,
                    appData.inputAddress
                )
            Spacer()
        }
        .padding()
    }

}

#Preview {
    SwiftUI_6_26_View()
}

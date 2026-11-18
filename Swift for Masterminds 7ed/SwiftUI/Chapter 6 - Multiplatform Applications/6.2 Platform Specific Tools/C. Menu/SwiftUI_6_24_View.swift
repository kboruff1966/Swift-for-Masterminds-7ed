//
//  SwiftUI_6_24_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/16/26.
//

import MyLibrary
import SwiftUI

struct SwiftUI_6_24_View: View {

    @State private var appData = ApplicationData.shared

    var body: some View {
        VStack {
            TextField("Insert your Name", text: $appData.inputMessage)
                .textFieldStyle(.roundedBorder)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_6_24_View()
}

//
//  SwiftUI_3_52_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/5/26.
//

import SwiftUI

struct SwiftUI_3_52_View: View {

    @State private var currentState: Float = 5

    var body: some View {
        VStack {
            ProgressView(value: currentState, total: 10)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_52_View()
}

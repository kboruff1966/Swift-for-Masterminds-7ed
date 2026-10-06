//
//  SwiftUI_3_53_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/5/26.
//

import SwiftUI

struct SwiftUI_3_53_View: View {

    @State private var currentState: Float = 5

    var body: some View {
        VStack {
            ProgressView()
                .progressViewStyle(.circular)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_53_View()
}

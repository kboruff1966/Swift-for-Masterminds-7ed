//
//  SwiftUI_8_26_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/19/26.
//

import SwiftUI

struct SwiftUI_8_26_View: View {
    var body: some View {
        VStack {
            ConcentricRectangle()
                .padding(40)
                .foregroundStyle(.white)
        }
        .frame(height: 200)
        .background(.gray)
        .containerShape(.rect(cornerRadius: 60))
        .padding()
    }
}

#Preview {
    SwiftUI_8_26_View()
}

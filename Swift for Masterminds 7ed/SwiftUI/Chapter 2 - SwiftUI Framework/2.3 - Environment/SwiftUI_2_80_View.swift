//
//  SwiftUI_2_80_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import SwiftUI

struct SwiftUI_2_80_View: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundStyle(Color("MyColor"))
    }
}

#Preview {
    SwiftUI_2_80_View()
        .environment(\.colorScheme, .dark)
}

//
//  SwiftUI_6_14_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/17/26.
//

import SwiftUI

struct SwiftUI_6_14_View: View {
    var body: some View {
        VStack {
            if #available(iOS 26, macOS 26, *) {
                Text("New Version")
            } else {
                Text("Old Version")
            }
        }
        .frame(width: 300, height: 350)
    }
}

#Preview {
    SwiftUI_6_14_View()
}

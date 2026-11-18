//
//  SwiftUI_6_12_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/14/26.
//

import SwiftUI

// Listing 6-12: Detecting the platform before compiling
struct SwiftUI_6_12_View: View {

    var body: some View {
        VStack {
            #if os(macOS)
                HStack {
                    Text("Mac Application")
                        .frame(width: 500, height: 350)
                }
            #else
                Text("Mobile Application")
            #endif
        }
    }
}

#Preview {
    SwiftUI_6_12_View()
}

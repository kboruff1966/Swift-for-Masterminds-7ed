//
//  SwiftUI_3_33_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/30/26.
//

import SwiftUI

/// Listing 3-33: Implementing a text editor
struct SwiftUI_3_33_View: View {
    
    @State private var text = ""
    
    var body: some View {
        TextEditor(text: $text)
    }
}

#Preview {
    SwiftUI_3_33_View()
}

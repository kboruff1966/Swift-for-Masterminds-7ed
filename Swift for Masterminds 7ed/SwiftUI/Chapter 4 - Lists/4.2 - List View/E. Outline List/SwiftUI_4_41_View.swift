//
//  SwiftUI_4_41_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/9/26.
//

import SwiftUI

/// Listing 4-41: Displaying a hierarchical list
struct SwiftUI_4_41_View: View {

    @State private var mainItemData = MainItemData.shared

    var body: some View {
        List(mainItemData.items, children: \.options) { item in
            Text(item.name)
        }
    }
}

#Preview {
    SwiftUI_4_41_View()

}

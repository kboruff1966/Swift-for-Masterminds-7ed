//
//  SwiftUI_4_42_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/9/26.
//

import SwiftUI

/// Listing 4-42: Implementing an OutlineGroup view
struct SwiftUI_4_42_View: View {

    @State private var mainItemData = MainItemData.shared

    var body: some View {
        List {
            ForEach(mainItemData.items) { section in
                Section(header: Text(section.name)) {
                    OutlineGroup(section.options ?? [], children: \.options) {
                        item in Text(item.name)
                    }
                }
            }
        }
    }
}

#Preview {
    SwiftUI_4_42_View()
}

//
//  SwiftUI_4_44_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/9/26.
//

import SwiftUI

/// Listing 4-44: Creating a table with multiple columns
struct SwiftUI_4_44_View: View {

    @State private var consumableItemData = ConsumableItemData.shared

    var body: some View {
        Table(consumableItemData.listOfItems) {
            TableColumn("Name", value: \.name)
            TableColumn("Category", value: \.category.rawValue)
            TableColumn("Calories") { item in
                Text("\(item.calories)")
            }
            .width(100)
        }
    }
}

#Preview {
    SwiftUI_4_44_View()
}

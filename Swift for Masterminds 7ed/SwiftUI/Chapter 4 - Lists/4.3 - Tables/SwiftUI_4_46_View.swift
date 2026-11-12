//
//  SwiftUI_4_46_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/9/26.
//

import SwiftUI
import MyLibrary

/// Listing 4-46: Sorting the values by column
struct SwiftUI_4_46_View: View {

    @State private var appData = ConsumableItemData.shared
    @State private var sort: [KeyPathComparator<ConsumableItem>] = []

    var body: some View {

        Table(appData.listOfItems, sortOrder: $sort) {
            TableColumn("Name", value: \.name)
            TableColumn("Category", value: \.category.rawValue)
            TableColumn("Calories", value: \.calories) { item in
                Text("\(item.calories)")
            }
            .width(100)
        }
        .padding(20)
        .onChange(of: sort) {
            appData.listOfItems.sort(using: sort)
        }
    }
}

#Preview {
    SwiftUI_4_46_View()
}

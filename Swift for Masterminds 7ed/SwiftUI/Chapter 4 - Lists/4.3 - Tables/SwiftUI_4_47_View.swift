//
//  SwiftUI_4_47_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/9/26.
//

import SwiftUI

/// Listing 4-47: Sorting only the calories
struct SwiftUI_4_47_View: View {

    @State private var appData = ConsumableItemData.shared
    @State private var sort = [KeyPathComparator(\ConsumableItem.name)]

    var body: some View {
        Table(appData.listOfItems, sortOrder: $sort) {
            TableColumn("Name") { item in
                Text("\(item.name)")
            }
            TableColumn("Category") { item in
                Text("\(item.category.rawValue)")
            }
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
    SwiftUI_4_47_View()
}

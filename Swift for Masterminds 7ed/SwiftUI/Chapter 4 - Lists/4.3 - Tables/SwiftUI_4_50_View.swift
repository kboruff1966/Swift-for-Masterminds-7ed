//
//  SwiftUI_4_50_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/10/26.
//

import SwiftUI

/// Listing 4-50: Defining the content of a column with a Toggle view
struct SwiftUI_4_50_View: View {

    @State private var appData = ConsumableItemData.shared
    @State private var sort = [KeyPathComparator(\ConsumableItem.name)]

    var body: some View {
        Table(appData.listOfItems, sortOrder: $sort) {
            TableColumn("Name", value: \.name)
            TableColumn("Category", value: \.category.rawValue)
            TableColumn("Calories", value: \.calories) { item in
                Text("\(item.calories)")
            }
            TableColumn(
                "Included",
                value: \.included,
                comparator: SortBoolComparator()
            ) { item in
                Toggle("", isOn: itemBinding(id: item.id).included)
                    .labelsHidden()
            }
            .width(100)
        }
        .onChange(of: sort) {
            appData.listOfItems.sort(using: sort)
        }
    }

    func itemBinding(id: UUID) -> Binding<ConsumableItem> {

        @Bindable var appData = appData

        let index = appData.listOfItems.firstIndex { $0.id == id }!
        return $appData.listOfItems[index]
    }
}

#Preview {
    SwiftUI_4_50_View()
}

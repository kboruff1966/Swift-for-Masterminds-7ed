//
//  SwiftUI_4_49_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/9/26.
//

import SwiftUI
import MyLibrary

/// Listing 4-49: Using a context menu to process a row
struct SwiftUI_4_49_View: View {

    @State private var appData = ConsumableItemData.shared
    @State private var selectedItems: Set<ConsumableItem.ID> = []

    var body: some View {

        Table(appData.listOfItems, selection: $selectedItems) {
            TableColumn("Name", value: \.name)
            TableColumn("Category", value: \.category.rawValue)
            TableColumn("Calories") { item in
                Text("\(item.calories)")
            }
            .width(100)
        }
        .contextMenu(
            forSelectionType: ConsumableItem.ID.self,
            menu: { selected in

                if selected.isEmpty {
                    Button("Create New Item") {

                        let newItem = ConsumableItem(
                            name: "Test",
                            category: .baked,
                            calories: 0,
                            included: false
                        )

                        appData.listOfItems.append(newItem)
                    }
                } else {
                    Button(
                        "Remove Selected Item\(selected.count > 1 ? "s" : "")"
                    ) {
                        appData.listOfItems.removeAll(where: { item in
                            selected.contains(item.id)
                        })
                    }
                }
            }
        )
    }

}

#Preview {
    SwiftUI_4_49_View()
}

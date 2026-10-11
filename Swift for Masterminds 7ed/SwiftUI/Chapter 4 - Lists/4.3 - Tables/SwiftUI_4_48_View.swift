//
//  SwiftUI_4_48_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/9/26.
//

import SwiftUI

/// Listing 4-48: Allowing the user to select items in a table
struct SwiftUI_4_48_View: View {

    @State private var appData = ConsumableItemData.shared
    @State private var selectedItems: Set<ConsumableItem.ID> = []

    var body: some View {

        #if !os(macOS)

            VStack {

                EditButton()
                    .buttonStyle(.glassProminent)

                Table(appData.listOfItems, selection: $selectedItems) {
                    TableColumn("Name", value: \.name)
                    TableColumn("Category", value: \.category.rawValue)
                    TableColumn("Calories") { item in
                        Text("\(item.calories)")
                    }
                    .width(100)
                }

                Text(listSelected())
                    .padding()
            }

        #else
            Text("MacOS")
                .padding()
        #endif
    }

    func listSelected() -> String {

        let list = selectedItems.map({ id in
            let item = appData.listOfItems.first { $0.id == id }
            return item?.name ?? ""
        })

        return String(list.sorted().joined(separator: " "))
    }

}

#Preview {
    SwiftUI_4_48_View()
}

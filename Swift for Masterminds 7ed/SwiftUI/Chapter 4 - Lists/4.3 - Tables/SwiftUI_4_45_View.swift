//
//  SwiftUI_4_45_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/9/26.
//

import SwiftUI

/// Listing 4-45: Defining the rows manually
struct SwiftUI_4_45_View: View {

    @State private var appData = ConsumableItemData.shared

    var body: some View {

        Table(
            of: ConsumableItem.self,
            columns: {
                TableColumn("Name", value: \.name)
                TableColumn("Category", value: \.category.rawValue)
                TableColumn("Calories") { item in
                    Text("\(item.calories)")
                }
                .width(100)
            },
            rows: {
                TableRow(
                    ConsumableItem(
                        name: "STANDARD",
                        category: .baked,
                        calories: 0,
                        included: false
                    )
                )
                ForEach(appData.listOfItems)
            }
        )
    }
}

#Preview {
    SwiftUI_4_45_View()
}

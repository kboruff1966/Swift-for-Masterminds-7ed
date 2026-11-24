//
//  SwiftUI_8_41_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/20/26.
//

import Charts
import MyLibrary
import SwiftUI

// Listing 8-41: Visualizing data with a bar chart
struct SwiftUI_8_41_View: View {

    @State private var appData = ConsumableItemData.shared

    var body: some View {
        VStack {

            Chart(appData.listOfItems) { item in
                BarMark(
                    x: .value("Name", item.name),
                    y: .value("Calories", item.calories)
                )
            }
            .frame(height: 300)
            .padding()

            Chart(appData.listOfItems) { item in
                BarMark(
                    x: .value("Calories", item.calories),
                    y: .value("Name", item.name)
                )
            }
            .frame(height: 300)
            .padding()
        }
    }

}

#Preview {
    SwiftUI_8_41_View()
}

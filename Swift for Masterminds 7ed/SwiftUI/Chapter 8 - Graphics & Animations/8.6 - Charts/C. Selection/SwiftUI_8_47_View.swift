//
//  SwiftUI_8_47_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/21/26.
//

import Charts
import MyLibrary
import SwiftUI

// Listing 8-47: Selecting a value
struct SwiftUI_8_47_View: View {

    @State private var appData = ConsumableItemData.shared
    @State private var selectedFood: String? = nil

    var body: some View {
        VStack {
            Chart(appData.listOfItems) { item in
                BarMark(
                    x: .value("Name", item.name),
                    y: .value("Calories", item.calories)
                )
                .foregroundStyle(item.name == selectedFood ? .yellow : .blue)
            }
            .frame(height: 300)
            .padding()
            .chartXSelection(value: $selectedFood)

            Spacer()
        }
    }
}

#Preview {
    SwiftUI_8_47_View()
}

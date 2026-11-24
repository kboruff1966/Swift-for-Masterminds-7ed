//
//  SwiftUI_8_46_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/21/26.
//

import Charts
import MyLibrary
import SwiftUI

// Listing 8-46: Drawing a line in the plot area
struct SwiftUI_8_46_View: View {

    @State private var appData = ConsumableItemData.shared

    var body: some View {
        VStack {
            Chart {
                ForEach(appData.listOfItems) { item in

                    BarMark(
                        x: .value("Name", item.name),
                        y: .value("Calories", item.calories)
                    )
                    .foregroundStyle(.cyan)
                    .opacity(0.5)
                    .cornerRadius(20)
                }

                RuleMark(y: .value("Average", averageCalories()))
                    .foregroundStyle(.black)
                    .lineStyle(StrokeStyle(lineWidth: 5))
                    .annotation(position: .top, alignment: .leading) {
                        Text("Average Calories")
                    }
            }
            .frame(height: 300)
            .padding()

            Spacer()
        }
    }

    func averageCalories() -> Int {

        guard !appData.listOfItems.isEmpty else { return 0 }
        
        let total = appData.listOfItems.map(\.calories).reduce(0, +)
        return total / appData.listOfItems.count
    }
}

#Preview {
    SwiftUI_8_46_View()
}

//
//  SwiftUI_8_45_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/21/26.
//

import Charts
import MyLibrary
import SwiftUI

// Listing 8-45: Representing the values with different types of marks
struct SwiftUI_8_45_View: View {

    @State private var appData = ConsumableItemData.shared

    var body: some View {
        
        VStack {
            Chart(appData.listOfItems) { item in
                
                LineMark(
                    x: .value("Name", item.name),
                    y: .value("Calories", item.calories)
                )
                .interpolationMethod(.catmullRom)

                PointMark(
                    x: .value("Name", item.name),
                    y: .value("Calories", item.calories)
                )
                .foregroundStyle(by: .value("Category", item.category.rawValue))
                .symbol(by: .value("Category", item.category.rawValue))
                .symbolSize(200)
            }
            .frame(height: 300)
            .padding()

            Spacer()
        }
    }

}

#Preview {
    SwiftUI_8_45_View()
}

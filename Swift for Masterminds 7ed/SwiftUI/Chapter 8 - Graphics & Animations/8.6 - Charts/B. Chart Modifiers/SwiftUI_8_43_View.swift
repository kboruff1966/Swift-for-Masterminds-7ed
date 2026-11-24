//
//  SwiftUI_8_43_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/21/26.
//

import Charts
import MyLibrary
import SwiftUI

// Listing 8-43: Defining a custom scale for the y axis
struct SwiftUI_8_43_View: View {

    @State private var appData = ConsumableItemData.shared

    var body: some View {
        VStack {
            Chart(appData.listOfItems) { item in
                BarMark(
                    x: .value("Name", item.name),
                    y: .value("Calories", item.calories)
                )
            }
            .chartYScale(domain: 0...1000)
            .frame(height: 300)
            .padding()
            
            Spacer()
        }
    }

}

#Preview {
    SwiftUI_8_43_View()
}

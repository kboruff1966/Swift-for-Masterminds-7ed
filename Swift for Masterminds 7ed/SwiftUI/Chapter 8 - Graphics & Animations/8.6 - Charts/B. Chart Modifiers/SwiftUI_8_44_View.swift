//
//  SwiftUI_8_44_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/21/26.
//

import Charts
import MyLibrary
import SwiftUI

// Listing 8-44: Assigning different styles based on a value
struct SwiftUI_8_44_View: View {

    @State private var appData = ConsumableItemData.shared

    var body: some View {
        VStack {
            Chart(appData.listOfItems) { item in
                SectorMark(angle: .value("Value", item.calories))
                    .foregroundStyle(by: .value("Product category", item.name))
            }
            .frame(height: 300)
            .padding()

            Spacer()
        }
    }
}

#Preview {
    SwiftUI_8_44_View()
}

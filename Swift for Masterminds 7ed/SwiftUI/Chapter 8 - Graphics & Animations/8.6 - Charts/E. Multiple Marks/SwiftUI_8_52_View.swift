//
//  SwiftUI_8_52_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/21/26.
//

import Charts
import MyLibrary
import SwiftUI

// Listing 8-52: Visualizing two series of values with a bar chart
struct SwiftUI_8_52_View: View {

    @State private var appData = SalesData.shared

    var body: some View {
        VStack {
            Chart {
                ForEach(appData.sales) { product in
                    ForEach(product.sales) { sale in
                        BarMark(
                            x: .value("Date", sale.date, unit: .day),
                            y: .value("Sales", sale.amount)
                        )
                    }
                    .foregroundStyle(by: .value("Products", product.name))
                }
            }
            .chartForegroundStyleScale(["Bagels": .red, "Brownies": .orange])
            .frame(height: 300).padding()

            Spacer()
        }
    }

}

#Preview {
    SwiftUI_8_52_View()
}

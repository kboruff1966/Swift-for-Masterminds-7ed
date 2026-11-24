//
//  SwiftUI_8_54_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/21/26.
//

import Charts
import MyLibrary
import SwiftUI

// Listing 8-54: Scrolling the chart
struct SwiftUI_8_54_View: View {

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
                    .position(by: .value("Product", product.name))
                }
            }
            .frame(height: 300)
            .chartLegend(.hidden)
            .chartScrollableAxes(.horizontal)
            .chartXVisibleDomain(length: 3600 * 24 * 4)
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    SwiftUI_8_54_View()
}

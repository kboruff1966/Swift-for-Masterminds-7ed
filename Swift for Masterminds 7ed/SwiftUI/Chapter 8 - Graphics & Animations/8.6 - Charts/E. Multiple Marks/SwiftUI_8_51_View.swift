//
//  SwiftUI_8_51_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/21/26.
//

import Charts
import MyLibrary
import SwiftUI

// Listing 8-51: Visualizing two series of values
struct SwiftUI_8_51_View: View {

    @State private var appData = SalesData.shared

    var body: some View {

        VStack {
            Chart {
                ForEach(appData.sales) { product in
                    ForEach(product.sales) { sale in
                        LineMark(
                            x: .value("Date", sale.date, unit: .day),
                            y: .value("Sales", sale.amount)
                        )
                    }
                    .foregroundStyle(by: .value("Products", product.name))
                }
            }
            .frame(height: 300)
            .padding()

            Spacer()
        }
    }
}

#Preview {
    SwiftUI_8_51_View()
}

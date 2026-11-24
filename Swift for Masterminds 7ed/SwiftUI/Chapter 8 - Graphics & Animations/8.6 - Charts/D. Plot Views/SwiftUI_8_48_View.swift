//
//  SwiftUI_8_48_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/21/26.
//

import Charts
import MyLibrary
import SwiftUI

// The kinds of plots that can be used to draw the chart.
enum PlotType: String, CaseIterable, Identifiable {

    case line = "Line"
    case point = "Point"
    case bar = "Bar"
    case area = "Area"
    case rectangle = "Rectangle"
    case sector = "Sector"

    var id: Self { self }
}

// Listing 8-48: Visualizing large datasets with a point plot
struct SwiftUI_8_48_View: View {

    @State private var appData = ConsumableItemData.shared
    @State private var plotType: PlotType = .point

    var body: some View {
        VStack {
            Picker("Plot", selection: $plotType) {
                ForEach(PlotType.allCases) { type in
                    Text(type.rawValue)
                        .tag(type)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)

            Chart {
                SwiftUI_8_48_View.plot(for: appData.listOfItems, type: plotType)
            }
            .frame(height: 300)
            .padding()

            Spacer()
        }
    }

    // Returns the plot matching the selected type. Unlike marks, plots take
    // the whole collection and use key paths to read each item's values.
    @ChartContentBuilder
    private static func plot(for items: [ConsumableItem], type: PlotType)
        -> some ChartContent
    {
        switch type {
        case .line:
            LinePlot(
                items,
                x: .value("Food", \.name),
                y: .value("Calories", \.calories)
            )
        case .point:
            PointPlot(
                items,
                x: .value("Food", \.name),
                y: .value("Calories", \.calories)
            )
        case .bar:
            BarPlot(
                items,
                x: .value("Food", \.name),
                y: .value("Calories", \.calories)
            )
        case .area:
            AreaPlot(
                items,
                x: .value("Food", \.name),
                y: .value("Calories", \.calories)
            )
        case .rectangle:
            RectanglePlot(
                items,
                x: .value("Food", \.name),
                y: .value("Calories", \.calories)
            )
        case .sector:
            SectorPlot(items, angle: .value("Calories", \.calories))
                .foregroundStyle(by: .value("Food", \.name))
        }
    }
}

#Preview {
    SwiftUI_8_48_View()
}

//
//  SwiftUI_8_42_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/20/26.
//

import Charts
import MyLibrary
import SwiftUI

// The kinds of marks that can be used to draw the chart.
enum MarkType: String, CaseIterable, Identifiable {
    
    case line = "Line"
    case point = "Point"
    case bar = "Bar"
    case area = "Area"
    case rectangle = "Rectangle"
    case sector = "Sector"

    var id: Self { self }
}

// Listing 8-42: Visualizing data with a line chart
struct SwiftUI_8_42_View: View {

    @State private var appData = ConsumableItemData.shared
    @State private var markType: MarkType = .line

    var body: some View {
        VStack {
            Picker("Mark", selection: $markType) {
                ForEach(MarkType.allCases) { type in
                    Text(type.rawValue)
                        .tag(type)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)

            Chart(appData.listOfItems) { item in
                SwiftUI_8_42_View.mark(for: item, type: markType)
            }
            .frame(height: 300)
            .padding()

            Spacer()
        }
    }

    // Returns the mark matching the selected type. @ChartContentBuilder lets
    // each switch branch return a different mark type.
    @ChartContentBuilder
    private static func mark(for item: ConsumableItem, type: MarkType)
        -> some ChartContent
    {
        switch type {
        case .line:
            LineMark(
                x: .value("Name", item.name),
                y: .value("Calories", item.calories)
            )
        case .point:
            PointMark(
                x: .value("Name", item.name),
                y: .value("Calories", item.calories)
            )
        case .bar:
            BarMark(
                x: .value("Name", item.name),
                y: .value("Calories", item.calories)
            )
        case .area:
            AreaMark(
                x: .value("Name", item.name),
                y: .value("Calories", item.calories)
            )
        case .rectangle:
            RectangleMark(
                x: .value("Name", item.name),
                y: .value("Calories", item.calories)
            )
        case .sector:
            SectorMark(angle: .value("Calories", item.calories))
                .foregroundStyle(by: .value("Name", item.name))
        }
    }
}

#Preview {
    SwiftUI_8_42_View()
}

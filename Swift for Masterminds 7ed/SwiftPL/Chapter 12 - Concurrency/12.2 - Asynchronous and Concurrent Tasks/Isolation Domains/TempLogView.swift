//
//  TempLogView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/12/26.
//

import SwiftUI

actor TemperatureLogger {

    let label: String
    var measurements: [Int]

    var max: Int {
        return measurements.max() ?? 0
    }

    init(label: String, measurements: [Int]) {
        self.label = label
        self.measurements = measurements

    }
}

extension TemperatureLogger {
    func update(with measurement: Int) {
        measurements.append(measurement)
    }
}

struct TempLogView: View {

    let logger = TemperatureLogger(
        label: "Test",
        measurements: [10]
    )

    @State private var maxTemp = 0
    @State private var temps: [Int] = []

    var body: some View {

        Text("Max: \(maxTemp)")
            .task {
                maxTemp = await logger.max
            }

        Text("Temps: \(temps.map { $0.formatted() }.formatted())")
            .task {
                temps = await logger.measurements
            }

        Button("Add Temp") {

            Task { @concurrent in

                await logger.update(with: Int.random(in: 0...100))

                Task { @MainActor in
                    maxTemp = await logger.max
                    temps = await logger.measurements
                }
            }
        }
        .padding()
        .buttonStyle(.glassProminent)

    }

}

#Preview {
    TempLogView()
}

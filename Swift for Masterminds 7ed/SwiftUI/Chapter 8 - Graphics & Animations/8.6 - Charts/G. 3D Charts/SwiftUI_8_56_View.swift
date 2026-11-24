//
//  SwiftUI_8_56_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/21/26.
//

import Charts
import MyLibrary
import SwiftUI

// Listing 8-56: Creating a 3D chart
struct SwiftUI_8_56_View: View {

    @State private var appData = Sample3DData.shared
    
    // Binding the pose lets the user rotate the chart with a drag gesture
    @State private var pose: Chart3DPose = .default

    var body: some View {
        VStack {
            Chart3D(appData.values) { value in
                PointMark(
                    x: .value("Elevation", value.x),
                    y: .value("Prominence", value.y),
                    z: .value("Isolation", value.z)
                )
            }
            .chart3DPose($pose)
            .frame(height: 300)
            .padding()

            Spacer()
        }
    }
}

#Preview {
    SwiftUI_8_56_View()
}

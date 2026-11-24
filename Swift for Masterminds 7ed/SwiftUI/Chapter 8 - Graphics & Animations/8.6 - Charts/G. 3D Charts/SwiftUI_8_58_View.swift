//
//  SwiftUI_8_58_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/23/26.
//

import Charts
import SwiftUI

// Listing 8-58: Plotting a mathematical function in 3D
struct SwiftUI_8_58_View: View {

    @State private var orientation: Chart3DPose = .default

    var body: some View {
        VStack {
            Chart3D {
                SurfacePlot(
                    x: "x",
                    y: "y",
                    z: "z",
                    function: { x, y in sin(x) * cos(y) }
                )
            }
            .chart3DPose($orientation).frame(height: 300)
            .padding()

            Spacer()
        }
    }

}

#Preview {
    SwiftUI_8_58_View()
}

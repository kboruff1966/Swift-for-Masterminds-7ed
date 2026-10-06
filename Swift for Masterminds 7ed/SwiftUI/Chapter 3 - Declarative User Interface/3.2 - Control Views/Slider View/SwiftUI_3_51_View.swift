//
//  SwiftUI_3_51_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/4/26.
//

import SwiftUI

/// Listing 3-51: Customizing the slider for Macs
struct SwiftUI_3_51_View: View {

    @State private var currentValue: Float = 5

    var body: some View {
        VStack {
            Text("Current Value: \(currentValue.formatted())")
            Slider(
                value: $currentValue,
                in: 0...10,
                label: {},
                tick: { value in
                    
                    let position = Int(value)
                    if position % 2 == 0 {
                        return SliderTick(
                            value,
                            label: {
                                Text(String(position))
                            }
                        )
                    } else {
                        return nil
                    }
                }
            )
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_51_View()
}

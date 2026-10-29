//
//  SwiftUI_2_47_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-47: Displaying a variable SF Symbol
struct SwiftUI_2_47_View: View {

    @State var value: CGFloat = 0.8

    var body: some View {
        VStack {
            Text("Value: \(value.formatted())")
            HStack {
                Image(
                    systemName: "dot.radiowaves.forward",
                    variableValue: value
                )
                .font(.system(size: 100))
                
                Slider(value: $value, in: 0...1)
            }
            .padding()
        }
    }
}

#Preview {
    SwiftUI_2_47_View()
}

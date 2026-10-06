//
//  SwiftUI_3_55_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/5/26.
//

import SwiftUI

struct SwiftUI_3_55_View: View {

    @State private var currentValue: Float = 0
    @State private var goingUp: Bool = true

    var body: some View {
        VStack {
            HStack {
                Text("Current Value: \(currentValue.formatted())")
                Image(systemName: goingUp ? "arrow.up" : "arrow.down")
                    .foregroundStyle(goingUp ? Color.green : Color.red)

                Stepper(
                    "",
                    onIncrement: {
                        currentValue += 5
                        goingUp = true
                    },
                    onDecrement: {
                        currentValue -= 5
                        goingUp = false
                    }
                )
                .labelsHidden()
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_55_View()
}

//
//  SwiftUI_7_1_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/5/26.
//

import SwiftUI

/// Listing 7-1: Storing and reading values from User Defaults
struct SwiftUI_7_1_View: View {

    @AppStorage("counter") var mycounter = 0

    var body: some View {
        HStack {
            Stepper("", value: $mycounter)
                .labelsHidden()
            Text("\(mycounter)")
                .font(.title)
        }
    }

}

#Preview {
    SwiftUI_7_1_View()
}

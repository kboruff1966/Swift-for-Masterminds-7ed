//
//  SwiftUI_4_60_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/16/26.
//

import SwiftUI

/// Listing 4-60: Limiting the DatePicker to a range of values
struct SwiftUI_4_60_View: View {

    @State private var selectedDate: Date = Date()

    var body: some View {
        VStack {
            DatePicker(
                "Date:",
                selection: $selectedDate,
                in: Date()...,
                displayedComponents: .date
            )
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_4_60_View()
}

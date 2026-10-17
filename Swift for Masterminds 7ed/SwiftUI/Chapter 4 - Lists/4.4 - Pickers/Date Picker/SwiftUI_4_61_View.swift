//
//  SwiftUI_4_61_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/16/26.
//

import SwiftUI

/// Listing 4-61: Presenting a picker with a spinning wheel
struct SwiftUI_4_61_View: View {

    @State private var selectedDate: Date = Date()

    var body: some View {
        VStack {
            Text(
                "Date: \(selectedDate.formatted(.dateTime.day().month()))"
            )

            DatePicker(
                "Date:",
                selection: $selectedDate,
                displayedComponents: .date
            )
            .labelsHidden()

            #if os(iOS)
                .datePickerStyle(.wheel)
            #endif

            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_4_61_View()
}

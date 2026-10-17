//
//  SwiftUI_4_59_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/16/26.
//

import SwiftUI

/// Listing 4-59: Defining a DatePicker to select a date
struct SwiftUI_4_59_View: View {

    @State private var selectedDate: Date = Date()

    var body: some View {
        VStack {

            DatePicker(
                "Date:",
                selection: $selectedDate,
                displayedComponents: .date
            )
//            .labelsHidden()

            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_4_59_View()
}

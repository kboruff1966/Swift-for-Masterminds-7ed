//
//  SwiftUI_4_62_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/16/26.
//

import SwiftUI

/// Listing 4-62: Picking multiple dates
struct SwiftUI_4_62_View: View {

    @State private var selectedDates: Set<DateComponents> = []
    @State private var mydates: String = ""

    var body: some View {

        #if os(macOS)
            Text("Hello World")
        #else
            VStack {
                MultiDatePicker("Dates:", selection: $selectedDates)

                Spacer()
                Text(mydates)
            }
            .padding()
            .onChange(of: selectedDates, initial: false) { old, values in
                let days = values.map({ value in String(value.day!) })
                mydates = days.joined(separator: ",")
            }
        #endif
    }
}

#Preview {
    SwiftUI_4_62_View()
}

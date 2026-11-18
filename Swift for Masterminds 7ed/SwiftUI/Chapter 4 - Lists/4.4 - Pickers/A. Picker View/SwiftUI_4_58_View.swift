//
//  SwiftUI_4_58_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/16/26.
//

import SwiftUI

// Listing 4-58: Implementing a segmented picker
struct SwiftUI_4_58_View: View {

    // Start with a value that matches a picker tag; macOS's pop-up picker
    // has no matching menu item for a value outside the list.
    @State private var selectedValue: String = "Paris"
    
    let listCities: [String] = [
        "Berlin", "Cairo", "Detroit", "Dublin",
        "Lisbon", "Madrid", "Mumbai", "Paris",
        "Rome", "Seoul", "Sydney", "Tokyo",
        "Toronto",
    ]

    var body: some View {
        VStack {
            Text(selectedValue)
            Picker("Cities:", selection: $selectedValue) {
                ForEach(listCities, id: \.self) { value in
                    Text(value)
                }
            }
            #if os(iOS)
            .pickerStyle(.wheel)
            #endif
            //            .pickerStyle(.segmented)

            Spacer()
        }
        .padding()
        .onAppear {
            selectedValue = listCities.randomElement() ?? selectedValue
        }
    }
}

#Preview {
    SwiftUI_4_58_View()
}

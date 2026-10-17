//
//  SwiftUI_4_58_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/16/26.
//

import SwiftUI

/// Listing 4-58: Implementing a segmented picker
struct SwiftUI_4_58_View: View {

    @State private var selectedValue: String = "No Value"
    let listCities: [String] = [
        "Paris", "Toronto", "Dublin", "Tokyo",
        "Sydney", "Berlin", "Madrid", "Rome",
        "Cairo", "Mumbai", "Lisbon", "Seoul",
        "Detroit",
    ]

    var body: some View {
        VStack {
            Text(selectedValue)
            Picker("Cities:", selection: $selectedValue) {
                ForEach(listCities, id: \.self) { value in
                    Text(value)
                }
            }
//            .pickerStyle(.wheel)

            Spacer()
        }
        .padding()
        .onAppear {
            selectedValue = listCities.randomElement()!
        }
    }
}

#Preview {
    SwiftUI_4_58_View()
}

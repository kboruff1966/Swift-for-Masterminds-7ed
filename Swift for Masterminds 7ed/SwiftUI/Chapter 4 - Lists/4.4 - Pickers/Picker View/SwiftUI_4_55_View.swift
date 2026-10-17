//
//  SwiftUI_4_55_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/16/26.
//

import SwiftUI

/// Listing 4-55: Defining a picker
struct SwiftUI_4_55_View: View {

    @State private var selectedValue: String
    let listCities: [String] = SwiftUI_4_55_View.cities

    private static let cities: [String] = ["Paris", "Toronto", "Dublin"]

    init() {
        // Start with a randomly chosen city
        _selectedValue = State(
            initialValue: Self.cities.randomElement() ?? "No Value"
        )
    }

    var body: some View {
        VStack {
            Text(selectedValue)
            Picker("Cities:", selection: $selectedValue) {
                ForEach(listCities, id: \.self) { value in
                    Text(value)
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_4_55_View()
}

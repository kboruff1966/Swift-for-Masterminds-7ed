//
//  Listing_4_56_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/16/26.
//

import SwiftUI

/// Listing 4-56: Selecting an initial value
struct Listing_4_56_View: View {

    @State private var selectedValue: String = "No Value"
    let listCities: [String] = [
        "Paris", "Toronto",
        "Dublin",
    ]

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
        .onAppear {
            selectedValue = listCities.randomElement()!
        }
    }
}

#Preview {
    Listing_4_56_View()
}

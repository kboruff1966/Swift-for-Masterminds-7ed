//
//  SwiftUI_4_57_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/16/26.
//

import SwiftUI

/// Listing 4-57: Listing values by index
struct SwiftUI_4_57_View: View {

    @State private var selectedValue = 0
    let listCities = ["Paris", "Toronto", "Dublin"]

    var body: some View {
        VStack {
            Text(listCities[selectedValue])
            Picker("Cities:", selection: $selectedValue) {
                ForEach(listCities.indices, id: \.self) { value in
                    Text(listCities[value])
                        .tag(value)
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_4_57_View()
}

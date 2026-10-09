//
//  SwiftUI_4_2_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/6/26.
//

import SwiftUI

/// Listing 4-2: Creating a list with a standard design
struct SwiftUI_4_2_View: View {

    let cities = ["London", "New York", "Tokyo", "Melbourne", "Berlin"]

    var body: some View {
        VStack {
            ForEach(cities, id: \.self) { city in
                Text(city)
                Divider()
            }
            
            Spacer()
        }
    }
}

#Preview {
    SwiftUI_4_2_View()
}

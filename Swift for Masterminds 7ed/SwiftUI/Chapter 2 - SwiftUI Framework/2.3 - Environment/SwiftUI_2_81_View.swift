//
//  SwiftUI_2_81_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/24/26.
//

import SwiftUI

extension EnvironmentValues {
    @Entry var myValue = "Default value"
}

/// Listing 2-81: Adding custom properties to the environment
struct SwiftUI_2_81_View: View {

    @Environment(\.myValue) var value

    var body: some View {
        Text(value)
            .font(.system(size: 20))
    }
}

#Preview {
    SwiftUI_2_81_View()
}

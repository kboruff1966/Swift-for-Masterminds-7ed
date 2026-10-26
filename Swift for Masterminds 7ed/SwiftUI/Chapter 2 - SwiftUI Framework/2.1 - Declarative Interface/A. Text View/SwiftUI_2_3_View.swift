//
//  SwiftUI_2_3_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-3: Formatting a value for a Text view
struct SwiftUI_2_3_View: View {

    let number: Float = 30.87512

    var body: some View {
        Text("My Number: \(number.formatted(.currency(code: "USD")))")
    }
}

#Preview {
    SwiftUI_2_3_View()
}

//
//  SwiftUI_2_2_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-2: Displaying values with a Text view
struct SwiftUI_2_2_View: View {
    
    let number: Float = 30.87512
    
    var body: some View {
        Text("My Number: \(number)")
    }
}

#Preview {
    SwiftUI_2_2_View()
}

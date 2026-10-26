//
//  SwiftUI_2_5_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-5: Displaying a timer with a Text view
struct SwiftUI_2_5_View: View {
    
    let today = Date()
    
    var body: some View {
        Text(today, style: .timer)
    }
}

#Preview {
    SwiftUI_2_5_View()
}

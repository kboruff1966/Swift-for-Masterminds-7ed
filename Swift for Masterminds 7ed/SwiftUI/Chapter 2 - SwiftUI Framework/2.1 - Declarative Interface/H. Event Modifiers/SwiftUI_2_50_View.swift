//
//  SwiftUI_2_50_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-50: Performing a task when the view appears
struct SwiftUI_2_50_View: View {

    let fontSize: CGFloat = 100

    var body: some View {
        Image(systemName: "envelope.circle")
            .font(Font.system(size: fontSize))
            .onAppear(perform: {
                print("Current font size: \(self.fontSize)")
            })
    }
}

#Preview {
    SwiftUI_2_50_View()
}

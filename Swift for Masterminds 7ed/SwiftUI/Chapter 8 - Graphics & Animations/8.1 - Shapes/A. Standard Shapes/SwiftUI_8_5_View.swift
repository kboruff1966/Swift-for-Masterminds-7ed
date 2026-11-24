//
//  SwiftUI_8_5_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-5: Combining shapes with other views
struct SwiftUI_8_5_View: View {

    @State private var setActive = true

    var body: some View {
        Button(
            action: {
                setActive.toggle()
            },
            label: {
                Text(setActive ? "Active" : "Inactive")
                    .font(.title)
                    .foregroundStyle(Color.white)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
            }
        )
        //        .background(
        //            Capsule()
        //                .fill(setActive ? Color.green : Color.red)
        //        )

        // Listing 8-6: Assigning a shape as the background of a button
        .background(setActive ? Color.green : Color.red, in: Capsule())
        .padding()
    }
}

#Preview {
    SwiftUI_8_5_View()
}

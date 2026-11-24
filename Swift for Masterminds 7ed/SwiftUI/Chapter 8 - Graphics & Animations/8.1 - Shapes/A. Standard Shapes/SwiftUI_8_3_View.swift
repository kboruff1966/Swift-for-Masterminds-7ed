//
//  SwiftUI_8_3_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-3: Defining a border
struct SwiftUI_8_3_View: View {
    var body: some View {

        VStack {
            RoundedRectangle(cornerRadius: 25)
                .stroke(.red, lineWidth: 20)
                .frame(width: 100, height: 100)
                .padding()
            RoundedRectangle(cornerRadius: 25)
                .strokeBorder(.red, lineWidth: 20)
                .frame(width: 100, height: 100)
                .padding()
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    SwiftUI_8_3_View()
}

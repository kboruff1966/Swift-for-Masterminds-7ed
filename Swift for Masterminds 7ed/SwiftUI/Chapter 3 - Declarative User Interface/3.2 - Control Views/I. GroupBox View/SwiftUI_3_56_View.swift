//
//  SwiftUI_3_56_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/5/26.
//

import SwiftUI

struct SwiftUI_3_56_View: View {

    @State private var setting1: Bool = true
    @State private var setting2: Bool = false
    @State private var setting3: Bool = false

    var body: some View {
        GroupBox("Settings") {
            VStack(spacing: 10) {
                Toggle("Autocorrection", isOn: $setting1)
                Toggle("Capitalization", isOn: $setting2)
                Toggle("Editable", isOn: $setting3)
            }
        }
        .padding()
    }
}

#Preview {
    SwiftUI_3_56_View()
}

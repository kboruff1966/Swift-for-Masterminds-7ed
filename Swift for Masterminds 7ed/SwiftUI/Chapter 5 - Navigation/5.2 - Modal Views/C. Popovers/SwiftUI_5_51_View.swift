//
//  SwiftUI_5_51_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/26/26.
//

import SwiftUI

struct SwiftUI_5_51_View: View {

    @State private var showPopover: Bool = false

    var body: some View {
        VStack {
            Button("Show Popover") {
                showPopover = true
            }
            .popover(isPresented: $showPopover, arrowEdge: .top) {
                HelpView()
                    .presentationCompactAdaptation(.popover)
            }
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    SwiftUI_5_51_View()
}

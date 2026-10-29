//
//  BoxListView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/29/26.
//

import SwiftUI

/// Listing 4-67: Defining a custom container
struct BoxListView<Content: View>: View {

    @ContentBuilder var content: Content

    var body: some View {
        VStack {
            Group(subviews: content) { subviews in
                
                let color = subviews.count > 2 ? Color.red : Color.blue

                ForEach(subviews) { subview in
                    HStack {
                        subview
                            .padding()
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .border(color, width: 5)
                    .padding(5)
                }
            }
        }
    }
}

#Preview {
    BoxListView {
        Text("Test")
    }
}

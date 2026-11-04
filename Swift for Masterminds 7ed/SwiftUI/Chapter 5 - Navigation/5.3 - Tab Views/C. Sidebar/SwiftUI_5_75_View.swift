//
//  SwiftUI_5_75_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/3/26.
//

import SwiftUI

/// Listing 5-75: Customizing the TabView view
struct SwiftUI_5_75_View: View {

    @State private var configuration = TabViewCustomization()

    var body: some View {
        TabView {
            Tab("Home", systemImage: "book.circle") {
                Text("Main Screen")
            }
            Tab("Settings", systemImage: "gear") {
                Text("Settings")
            }
            TabSection("More Info") {

                Tab("Additional One", systemImage: "plus") {
                    Text("Additional Tab One")
                }
                .customizationID("com.formasterminds.additional1")

                Tab("Additional Two", systemImage: "pencil") {
                    Text("Additional Tab Two")
                }
                .customizationID("com.formasterminds.additional2")
            }
            .customizationID("com.formasterminds.more")
        }
        .tabViewStyle(.sidebarAdaptable)
        .tabViewCustomization($configuration)
    }

}

#Preview {
    SwiftUI_5_75_View()
}

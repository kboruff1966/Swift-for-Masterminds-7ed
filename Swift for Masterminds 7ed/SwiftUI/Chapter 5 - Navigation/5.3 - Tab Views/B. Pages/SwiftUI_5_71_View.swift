//
//  SwiftUI_5_71_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/3/26.
//

import SwiftUI

/// Listing 5-71: Configuring the TabView view to show content in pages
struct SwiftUI_5_71_View: View {

    var body: some View {
        TabView {
            Tab {
                Image("spot1")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
            }
            Tab {
                Image("spot2")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .ignoresSafeArea(.all)
    }

}

#Preview {
    SwiftUI_5_71_View()
}

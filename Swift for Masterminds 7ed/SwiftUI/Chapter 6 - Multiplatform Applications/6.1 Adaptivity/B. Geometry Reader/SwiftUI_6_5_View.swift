//
//  SwiftUI_6_5_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/13/26.
//

import MyLibrary
import SwiftUI

// Listing 6-5: Adapting the interface to the current orientation
struct SwiftUI_6_5_View: View {

    @Environment(ApplicationData.self) private var appData
    @Environment(\.horizontalSizeClass) private var hSize

    var body: some View {

        @Bindable var appData = appData

        Group {
            switch appData.mode {
            case .small:
                NavigationStack {
                    VStack {
                        Text("Interface for small window")
                            .font(.system(size: 26))
                            .padding(.top, 150)
                        Spacer()
                    }
                }
            case .large:
                NavigationSplitView(columnVisibility: $appData.columnVisibility)
                {
                    VStack {
                        Text("Menu for large window")
                            .font(.system(size: 26))
                            .padding(.top, 150)
                        Spacer()
                    }
                } detail: {
                    VStack {
                        Text("Content for large window")
                            .font(.system(size: 36))
                            .padding(.top, 150)
                        Spacer()
                    }
                }
            }
        }
        .onAppear {
            appData.update(horizontalSizeClass: hSize)
        }
        .onChange(of: hSize) { _, new in
            appData.update(horizontalSizeClass: new)
        }
        .background {
            GeometryReader { proxy in
                Color.clear
                    .onAppear {
                        appData.updateGeometry(size: proxy.size)
                    }
                    .onChange(of: proxy.size) { _, size in
                        appData.updateGeometry(size: size)
                    }
            }
        }
    }
}

#Preview {
    SwiftUI_6_5_View()
        .environment(ApplicationData.shared)
}

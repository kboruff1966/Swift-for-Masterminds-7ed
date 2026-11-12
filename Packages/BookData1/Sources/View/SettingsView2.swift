//
//  SettingsView2.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/20/26.
//

import SwiftUI

public struct SettingsView2: View {

    @Binding var viewPath: NavigationPath

    @State private var showPictures = true
    @State private var showYear = true

    public init(viewPath: Binding<NavigationPath>) {
        self._viewPath = viewPath
    }

    public var body: some View {
        Form {
            Toggle("Show Pictures", isOn: $showPictures)
            Toggle("Show Year", isOn: $showYear)
        }
        .navigationBarBackButtonHidden(true).toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Back") { viewPath.removeLast() }
            }
        }
    }
}

#Preview {
    @Previewable @State var navigation = NavigationPath()
    NavigationStack { SettingsView2(viewPath: $navigation) }
}

//
//  SwiftUIView.swift
//  BookData1
//
//  Created by Keith Boruff on 11/12/26.
//

import SwiftUI

public struct SettingsView: View {

    @Environment(\.dismiss) private var dismiss

    /// Optional path binding. If provided, Back pops the path directly;
    /// otherwise the view falls back to the environment's dismiss action.
    private var viewPath: Binding<NavigationPath>?

    @State private var showPictures = true
    @State private var showYear = true

    public init(viewPath: Binding<NavigationPath>? = nil) {
        self.viewPath = viewPath
    }

    public var body: some View {
        Form {
            Toggle("Show Pictures", isOn: $showPictures)
            Toggle("Show Year", isOn: $showYear)
        }
        .navigationTitle("Settings")
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Back") {
                    if let viewPath, !viewPath.wrappedValue.isEmpty {
                        viewPath.wrappedValue.removeLast()
                    } else {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

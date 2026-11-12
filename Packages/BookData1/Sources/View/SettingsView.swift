//
//  SwiftUIView.swift
//  BookData1
//
//  Created by Keith Boruff on 11/12/26.
//

import SwiftUI

public struct SettingsView: View {

    @Environment(\.dismiss) var dismiss

    @State private var showPictures = true
    @State private var showYear = true
    
    public init() {}

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
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

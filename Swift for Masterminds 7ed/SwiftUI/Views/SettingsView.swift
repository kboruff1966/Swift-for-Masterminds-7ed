//
//  SettingsView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/3/26.
//

import SwiftUI

struct SettingsView: View {

    @Environment(\.dismiss) var dismiss

    @State private var showPictures = true
    @State private var showYear = true

    var body: some View {
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

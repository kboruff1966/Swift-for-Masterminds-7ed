//
//  SettingsView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/19/26.
//

import SwiftUI

struct SettingsView: View {

    @State private var showPictures: Bool = true
    @State private var showYear: Bool = true

    @Environment(\.dismiss) var dismiss

    var body: some View {
        Form {
            Toggle("Show Pictures", isOn: $showPictures)
            Toggle("Show Year", isOn: $showYear)
        }
        .navigationTitle("Settings")

        /// Listing 5-30: Creating a custom back button
        //        .navigationBarBackButtonHidden(true)
        //        .toolbar {
        //            ToolbarItem(placement: .topBarLeading) {
        //                Button("Back") {
        //                    dismiss()
        //                }
        //            }
        //        }
    }
}

#Preview {
    NavigationStack { SettingsView() }
}

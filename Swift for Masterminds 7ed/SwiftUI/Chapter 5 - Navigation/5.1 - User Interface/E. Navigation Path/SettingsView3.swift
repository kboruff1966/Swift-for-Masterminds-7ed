//
//  SettingsView3.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/21/26.
//

import SwiftUI

struct SettingsView3: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        VStack {
            Text("My Settings")
            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden(true).toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Back") {
                    appData.viewPath.removeLast()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SettingsView3()
            .environment(BookData.shared)
    }
}

//
//  SettingsView3.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/21/26.
//

import SwiftUI

public struct SettingsView: View {

    @Environment(BookData.self) private var appData
    
    public init() {}

    public var body: some View {
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
        SettingsView()
            .environment(BookData.shared)
    }
}

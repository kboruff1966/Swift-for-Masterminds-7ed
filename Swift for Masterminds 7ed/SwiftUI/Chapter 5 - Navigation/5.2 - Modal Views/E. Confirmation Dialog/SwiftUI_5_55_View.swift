//
//  SwiftUI_5_55_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/26/26.
//

import SwiftUI

/// Listing 5-55: Defining an action sheet
struct SwiftUI_5_55_View: View {

    @State private var openDialog: Bool = false

    var body: some View {
        VStack(spacing: 10) {
            Button("Open Confirmation Dialog") {
                openDialog = true
            }
            .confirmationDialog(
                "Email",
                isPresented: $openDialog,
                actions: {
                    Button(
                        "Move to Inbox",
                        role: .none,
                        action: { print("Move to Inbox") }
                    )
                    Button(
                        "Delete",
                        role: .destructive,
                        action: { print("Delete") }
                    )
                    Button("Cancel", role: .cancel, action: { print("Cancel") })
                },
                message: { Text("What do you want to do with the message?") }
            )
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwiftUI_5_55_View()
}

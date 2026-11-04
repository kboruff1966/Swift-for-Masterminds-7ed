//
//  SwiftUI_5_53_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/26/26.
//

import SwiftUI

/// Listing 5-53: Displaying an alert view
struct SwiftUI_5_53_View: View {

    @State private var name: String = ""
    @State private var openAlert: Bool = false

    var body: some View {

        VStack(spacing: 10) {
            TextField("Insert your Name", text: $name)
                .textFieldStyle(.roundedBorder)
            HStack {
                Spacer()
                Button("Save") {
                    openAlert = name.isEmpty
                }
            }
            Spacer()
        }
        .padding()
        //        .alert(
        //            "Error",
        //            isPresented: $openAlert,
        //            actions: {
        //                Button("Cancel", role: .cancel, action: {})
        //            },
        //            message: { Text("Insert your name") }
        //        )

        // Listing 5-54: Defining an Alert view with multiple buttons
        .alert(
            "Error",
            isPresented: $openAlert,
            actions: {
                Button("Cancel", role: .cancel, action: {})
                Button("Delete", role: .destructive, action: { name = "" })
                Button(
                    "Save Anyway",
                    role: .none,
                    action: { print("Save value") }
                )
            },
            message: { Text("Insert your name") }
        )

    }
}

#Preview {
    SwiftUI_5_53_View()
}

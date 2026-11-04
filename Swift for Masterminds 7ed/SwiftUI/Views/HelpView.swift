//
//  HelpView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/26/26.
//

import SwiftUI

struct HelpView: View {
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                Button("X") {
                    dismiss()
                }
                .buttonStyle(.glass)
                .padding(.trailing, 16)
            }
            
            Text("Press this button when you need help")
                .font(.title)
                .padding()
        }
        .frame(width: 250, height: 250)
    }
}

#Preview {
    HelpView()
}

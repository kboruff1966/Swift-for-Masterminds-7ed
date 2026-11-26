//
//  SwiftUI_9_15_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/26/26.
//

import SwiftUI

// Listing 9-15: Providing feedback to the user
struct SwiftUI_9_15_View: View {

    @State private var picture: Image = Image("nopicture")
    @State private var didEnter: Bool = false

    var body: some View {
        VStack {
            picture
                .resizable()
                .scaledToFit()
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 400)
                .overlay(
                    didEnter
                        ? Color.green.opacity(0.2)
                        : Color.clear
                )
                .dropDestination(
                    for: Image.self,
                    action: { elements, location in

                        guard let image = elements.first else {
                            return false
                        }

                        picture = image
                        return true
                    },
                    isTargeted: { value in
                        didEnter = value
                    }
                )
            Spacer()
        }
    }

}

#Preview {
    SwiftUI_9_15_View()
}

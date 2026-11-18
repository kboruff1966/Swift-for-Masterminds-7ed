//
//  SwiftUI_6_6_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/13/26.
//

import SwiftUI

// Listing 6-6: Setting and reading preferences
struct BoxPreference: PreferenceKey {

    typealias Value = CGSize

    static let defaultValue: Value = .zero

    static func reduce(value: inout Value, nextValue: () -> Value) {
        value = nextValue()
    }
}

struct SwiftUI_6_6_View: View {

    @State private var size: CGSize = .zero

    var body: some View {
        VStack {
            Image("spot1")
                .resizable()
                .scaledToFit()
                .background(
                    GeometryReader { geometry in
                        Color.clear
                            .preference(
                                key: BoxPreference.self,
                                value: geometry.size
                            )
                    }
                )
            Text("\(Int(size.width)) x \(Int(size.height))")
                .font(.title)
        }
        .padding()
        .onPreferenceChange(BoxPreference.self) { value in
            size = value
        }
    }
}

#Preview {
    SwiftUI_6_6_View()
}

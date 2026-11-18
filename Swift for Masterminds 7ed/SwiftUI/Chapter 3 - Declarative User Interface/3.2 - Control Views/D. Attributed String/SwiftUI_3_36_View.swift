//
//  SwiftUI_3_36_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/1/26.
//

import SwiftUI

enum HighlightAttribute: AttributedStringKey {
    typealias Value = Bool
    static let name = "com.example.highlight"
}

struct MyAttributes: AttributeScope {
    let highlight: HighlightAttribute
}

extension AttributeScopes {
    var myAttributes: MyAttributes.Type { MyAttributes.self }
}

extension AttributeDynamicLookup {
    subscript<T: AttributedStringKey>(
        dynamicMember keyPath: KeyPath<MyAttributes, T>
    ) -> T {
        self[T.self]
    }
}

/// Listing 3-36: Creating attributed text
struct SwiftUI_3_36_View: View {

    var myText: AttributedString {

        let text1 = AttributedString(
            "SwiftUI",
            attributes: AttributeContainer()
                .font(.body.bold())
                .foregroundColor(.blue)
                .highlight(true)
        )

        let text2 = AttributedString(" can show ")

        let text3 = AttributedString(
            "attributes",
            attributes: AttributeContainer()
                .font(.body.bold())
                .backgroundColor(.red)
        )

        let text4 = AttributedString(".")

        return text1 + text2 + text3 + text4
    }

    var body: some View {
        Text(myText)
            .padding(10)
    }
}

#Preview {
    SwiftUI_3_36_View()
}

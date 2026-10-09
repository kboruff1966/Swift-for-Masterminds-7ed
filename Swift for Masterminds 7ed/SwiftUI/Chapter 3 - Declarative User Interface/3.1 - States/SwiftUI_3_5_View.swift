//
//  SwiftUI_3_5_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/8/26.
//

import SwiftUI

struct HeaderView: View {

    @Binding var title: String
    @Binding var titleInput: String
    let counter: Int

    init(title: Binding<String>, titleInput: Binding<String>) {

        _title = title
        _titleInput = titleInput

        let sentence = _title.wrappedValue
        counter = sentence.count
    }

    var body: some View {
        VStack {
            Text("\(title) (count: \(counter))")
                .padding(10)
            TextField("Insert Title", text: _titleInput.projectedValue)
                .textFieldStyle(.roundedBorder)
        }
    }
}

struct SwiftUI_3_5_View: View {

    @State private var title = "Default Title"
    @State private var titleInput = ""

    var body: some View {
        VStack {
            HeaderView(title: $title, titleInput: $titleInput)
            Button(
                action: {
                    title = titleInput
                    titleInput = ""
                },
                label: {
                    Text("Change Title")
                }
            )
            Spacer()
        }
        .padding()
    }

}

#Preview {
    SwiftUI_3_5_View()
}

#Preview("Header") {

    let constantTitle = Binding<String>(
        get: {
            return "My Preview Title"
        },
        set: { value in
            print(value)
        }
    )

    let constantInput = Binding<String>(
        get: { return "" },
        set: { value in print(value) }
    )
    
    return HeaderView(title: constantTitle, titleInput: constantInput)

}

#Preview("Header2") {
    
    HeaderView(title: .constant("My Preview Title"), titleInput: .constant(""))
    
}

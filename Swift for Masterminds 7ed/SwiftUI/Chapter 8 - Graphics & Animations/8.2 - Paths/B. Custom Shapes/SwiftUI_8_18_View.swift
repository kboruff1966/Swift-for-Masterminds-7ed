//
//  SwiftUI_8_18_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

struct SwiftUI_8_18_View: View {
    var body: some View {

        VStack {
            ScrollView(.horizontal, showsIndicators: true) {
                HStack {
                    Triangle()
                        .fill(.blue)
                        .frame(width: 170, height: 150)
                    Triangle()
                        .fill(.green)
                        .frame(width: 170, height: 100)
                    Triangle()
                        .fill(.yellow)
                        .frame(width: 150, height: 180)
                    Triangle()
                        .fill(.red)
                        .frame(width: 100, height: 150)
                }
            }
            .padding()

            Spacer()
        }
    }
}

#Preview {
    SwiftUI_8_18_View()
}

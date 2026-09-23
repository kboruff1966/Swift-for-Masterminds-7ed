//
//  MyModifiers.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

struct MyModifiers: ViewModifier {
    
    let size : CGFloat

    func body(content: Content) -> some View {
        content
            .font(.system(size: size).weight(.semibold))
            .foregroundStyle(Color.blue)
    }
}

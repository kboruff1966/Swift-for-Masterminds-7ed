//
//  Triangle.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/18/26.
//

import SwiftUI

// Listing 8-17: Creating a custom shape view
struct Triangle: Shape {

    nonisolated func path(in rect: CGRect) -> Path {

        var path = Path()

        let width = rect.width
        let height = rect.height
        let posX = rect.origin.x
        let posY = rect.origin.y

        path.move(to: CGPoint(x: posX, y: posY))
        path.addLine(to: CGPoint(x: posX + width, y: posY))
        path.addLine(to: CGPoint(x: posX, y: posY + height))

        path.closeSubpath()

        return path
    }
}

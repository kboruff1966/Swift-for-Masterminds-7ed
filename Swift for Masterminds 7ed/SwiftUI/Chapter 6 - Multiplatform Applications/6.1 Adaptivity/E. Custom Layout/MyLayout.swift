//
//  MyLayout.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/14/26.
//

import SwiftUI

struct MyLayout: Layout {

    func sizeThatFits(
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) -> CGSize {

        var totalWidth: CGFloat = 0
        var totalHeight: CGFloat = 0

        for (index, view) in subviews.enumerated() {

            if index > 0 {
                totalHeight += 10
            }

            let viewSize = view.sizeThatFits(.unspecified)
            totalWidth += viewSize.width + CGFloat(30 * index)
            totalHeight += viewSize.height
        }

        return CGSize(width: totalWidth, height: totalHeight)
    }

    func placeSubviews(
        in bounds: CGRect,
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) {
        var posX: CGFloat = bounds.origin.x
        var posY: CGFloat = bounds.origin.y

        for (index, view) in subviews.enumerated() {

            if index > 0 {
                posY += 10
                posX += 30
            }

            view.place(at: CGPoint(x: posX, y: posY), proposal: .unspecified)
            posY += view.sizeThatFits(.unspecified).height
        }
    }
}

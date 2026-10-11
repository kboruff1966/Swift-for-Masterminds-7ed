//
//  CompareBool.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/10/26.
//

import Foundation

struct SortBoolComparator: SortComparator {

    typealias Compared = Bool
    var order: SortOrder = .forward

    func compare(_ lhs: Bool, _ rhs: Bool) -> ComparisonResult {

        return switch (lhs, rhs) {

        // false < true when order is .forward
        case (false, true):
            order == .forward ? .orderedAscending : .orderedDescending

        // true < false when order is .reverse
        case (true, false):
            order == .forward ? .orderedDescending : .orderedAscending

        default:
            .orderedSame
        }
    }
}

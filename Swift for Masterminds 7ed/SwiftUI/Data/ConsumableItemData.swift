//
//  ConsumableItemData.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/9/26.
//

import SwiftUI

enum Category: String, Hashable, Sendable {
    case dairy = "Dairy"
    case baked = "Baked"
    case beverages = "Beverages"
}

struct ConsumableItem: Identifiable {

    let id = UUID()

    nonisolated var name: String
    nonisolated var category: Category
    nonisolated var calories: Int
    nonisolated var included: Bool
}

@Observable class ConsumableItemData {

    var listOfItems = [

        ConsumableItem(
            name: "Cheese",
            category: .dairy,
            calories: 402,
            included: false
        ),

        ConsumableItem(
            name: "Bagels",
            category: .baked,
            calories: 250,
            included: false
        ),

        ConsumableItem(
            name: "Juice",
            category: .beverages,
            calories: 23,
            included: false
        ),

        ConsumableItem(
            name: "Butter",
            category: .dairy,
            calories: 717,
            included: false
        ),

        ConsumableItem(
            name: "Lemonade",
            category: .beverages,
            calories: 40,
            included: false
        ),

        ConsumableItem(
            name: "Brownies",
            category: .baked,
            calories: 466,
            included: false
        ),
    ]

    static let shared: ConsumableItemData = ConsumableItemData()

    private init() {

    }
}

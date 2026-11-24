//
//  ConsumableItemData.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/9/26.
//

import SwiftUI

public enum Category: String, Hashable, Sendable {
    case dairy = "Dairy"
    case baked = "Baked"
    case beverages = "Beverages"
}

public struct ConsumableItem: Identifiable {

    public let id = UUID()

    nonisolated public var name: String
    nonisolated public var category: Category
    nonisolated public var calories: Int
    nonisolated public var included: Bool

    // The synthesized memberwise initializer is internal, so it must be declared
    // explicitly to be usable from outside the package.
    public init(name: String, category: Category, calories: Int, included: Bool) {
        self.name = name
        self.category = category
        self.calories = calories
        self.included = included
    }
}

@MainActor
@Observable
public class ConsumableItemData {

    public var listOfItems = [

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

        ConsumableItem(
            name: "Milk",
            category: .dairy,
            calories: 42,
            included: false
        ),

        ConsumableItem(
            name: "Yogurt",
            category: .dairy,
            calories: 59,
            included: false
        ),

        ConsumableItem(
            name: "Ice Cream",
            category: .dairy,
            calories: 207,
            included: false
        ),

        ConsumableItem(
            name: "Croissants",
            category: .baked,
            calories: 406,
            included: false
        ),

        ConsumableItem(
            name: "Muffins",
            category: .baked,
            calories: 377,
            included: false
        ),

        ConsumableItem(
            name: "Bread",
            category: .baked,
            calories: 265,
            included: false
        ),

        ConsumableItem(
            name: "Donuts",
            category: .baked,
            calories: 452,
            included: false
        ),

        ConsumableItem(
            name: "Coffee",
            category: .beverages,
            calories: 2,
            included: false
        ),

        ConsumableItem(
            name: "Tea",
            category: .beverages,
            calories: 1,
            included: false
        ),

        ConsumableItem(
            name: "Soda",
            category: .beverages,
            calories: 41,
            included: false
        ),
    ]

    public static let shared: ConsumableItemData = ConsumableItemData()

    private init() {

    }
}

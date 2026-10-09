//
//  FoodData.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/9/26.
//

import SwiftUI

struct MainItems: Identifiable {

    let id = UUID()

    var name: String
    var options: [MainItems]?
}

@Observable class MainItemData {

    var items: [MainItems] = [
        MainItems(
            name: "Food",
            options: [
                MainItems(name: "Oatmeal"),
                MainItems(name: "Bagels"),
                MainItems(name: "Brownies"),

                MainItems(
                    name: "Cheese",
                    options: [
                        MainItems(name: "Roquefort"),
                        MainItems(name: "Mozzarella"),
                        MainItems(name: "Cheddar"),
                    ]
                ),
                MainItems(name: "Cookies"),
                MainItems(name: "Donuts"),
            ]
        ),
        MainItems(
            name: "Beverages",
            options: [
                MainItems(name: "Coffee"),
                MainItems(name: "Juice"),
                MainItems(name: "Lemonade"),
            ]
        ),
    ]

    static let shared: MainItemData = MainItemData()

    private init() {

    }
}

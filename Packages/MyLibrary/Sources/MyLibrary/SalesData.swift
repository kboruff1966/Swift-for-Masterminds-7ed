//
//  File.swift
//  MyLibrary
//
//  Created by Keith Boruff on 11/21/26.
//

import Foundation
import SwiftUI

public struct Sales: Identifiable {
    
    public let id = UUID()
    
    public var date: Date
    public var amount: Int
}

public struct Products: Identifiable {
    
    public let id = UUID()
    
    public var name: String
    public var sales: [Sales]
}

@MainActor
@Observable public class SalesData {
    
    public var sales: [Products]
    public static let shared: SalesData = SalesData()
    
    private init() {
        
        let salesBagels = [
            Sales(date: Date(timeInterval: -86400 * 7, since: Date()), amount: 10),
            Sales(date: Date(timeInterval: -86400 * 6, since: Date()), amount: 12),
            Sales(date: Date(timeInterval: -86400 * 5, since: Date()), amount: 8),
            Sales(date: Date(timeInterval: -86400 * 4, since: Date()), amount: 13),
            Sales(date: Date(timeInterval: -86400 * 3, since: Date()), amount: 9),
            Sales(date: Date(timeInterval: -86400 * 2, since: Date()), amount: 7),
            Sales(date: Date(timeInterval: -86400 * 1, since: Date()), amount: 8)
        ]
        
        let salesBrownies = [
            Sales(date: Date(timeInterval: -86400 * 7, since: Date()), amount: 3),
            Sales(date: Date(timeInterval: -86400 * 5, since: Date()), amount: 2),
            Sales(date: Date(timeInterval: -86400 * 4, since: Date()), amount: 8),
            Sales(date: Date(timeInterval: -86400 * 3, since: Date()), amount: 6),
            Sales(date: Date(timeInterval: -86400 * 2, since: Date()), amount: 5),
            Sales(date: Date(timeInterval: -86400 * 1, since: Date()), amount: 9)
        ]
        
        sales = [
            Products(name: "Bagels", sales: salesBagels),
            Products(name: "Brownies", sales: salesBrownies)
        ]
    }
}


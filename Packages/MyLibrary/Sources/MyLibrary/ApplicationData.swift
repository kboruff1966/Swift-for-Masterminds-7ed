//
//  ApplicationData1.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/5/26.
//

import SwiftUI

public enum LayoutMode: Equatable {

    case small
    case large

    public init(horizontalSizeClass sc: UserInterfaceSizeClass?) {
        self = sc == .regular ? .large : .small
    }
}

public struct AddressKey: FocusedValueKey {
    public typealias Value = String
}

extension FocusedValues {
    public var address: AddressKey.Value? {
        get { self[AddressKey.self] }
        set { self[AddressKey.self] = newValue }
    }
}

@MainActor
@Observable
public class ApplicationData {

    // MARK: - Singleton

    public static let shared = ApplicationData()
    private init() {}

    // MARK: - Title

    // Listing 3-57: Storing our data in an observable object
    public var title = "Default Title"
    public var titleInput = ""
    @ObservationIgnored public var defaultValue = 0

    // MARK: - Layout

    public var mode: LayoutMode = .small

    public var isLandscape = false {
        didSet { columnVisibility = isLandscape ? .all : .detailOnly }
    }

    public var columnVisibility: NavigationSplitViewVisibility = .detailOnly

    public func updateGeometry(size: CGSize) {
        isLandscape = size.width > size.height
    }

    public func update(horizontalSizeClass: UserInterfaceSizeClass?) {
        mode = LayoutMode(horizontalSizeClass: horizontalSizeClass)
    }

    // MARK: - Input

    // Listing 6-22: Defining a state to enable and disable a menu option
    public var inputMessage = ""

    // Listing 6-25: Storing a focus state in the FocusedValues structure
    public var inputAddress = ""

    // MARK: - Data

    // Listing 6-34: Defining a model to test alternate backgrounds
    public var foodList = [
        "bagels", "brownies", "butter", "cheese", "coffee", "cookies", "donuts",
        "granola", "juice", "lemonade", "lettuce", "milk", "oatmeal", "potato",
        "tomato", "yogurt",
    ]

}

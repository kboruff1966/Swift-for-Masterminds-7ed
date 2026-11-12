//
//  ApplicationData1.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/5/26.
//

import SwiftUI

@MainActor
@Observable
public class ApplicationData {

    /// Listing 7-4: Controlling the navigation path from an observable object
    public var viewPath = NavigationPath()

    /// Listing 7-14: Controlling the values selected by the user from the model
    public var selectedBook: Book? = nil
    public var selectedAuthor: Author? = nil

    public static let shared = ApplicationData()

    private init() {}
}

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

    public var title = "Default Title"
    public var titleInput = ""

    @ObservationIgnored
    public var defaultValue: Int = 0

    public static let shared = ApplicationData()

    private init() {}
}

//
//  ApplicationData1.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/5/26.
//

import SwiftUI

@Observable
class ApplicationData {

    var title = "Default Title"
    var titleInput = ""
    @ObservationIgnored var defaultValue: Int = 0

    static let shared = ApplicationData()

    private init() {

    }
}

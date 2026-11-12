//
//  AuthorInfo.swift
//  BookData_Chap7
//
//  Created by Keith Boruff on 11/11/26.
//

import Foundation

public struct AuthorInfo: Codable {
    public var birthday: Date?
    public var placeOfBirth: String = ""

    // The synthesized memberwise initializer is internal, so expose a public one for use outside the package
    public init(birthday: Date? = nil, placeOfBirth: String = "") {
        self.birthday = birthday
        self.placeOfBirth = placeOfBirth
    }
}
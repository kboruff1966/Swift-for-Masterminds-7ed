//
//  EmployeesData.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/10/26.
//

import SwiftUI

struct Employee: Identifiable {

    let id = UUID()

    var name: String
    var position: String
    var subordinates: [Employee]
    
}

@Observable class EmployeesData {

    var listOfEmployees: [Employee] = []
    static let shared: EmployeesData = EmployeesData()

    private init() {

        let employee1 = Employee(
            name: "Sander",
            position: "Subordinate",
            subordinates: []
        )

        let employee2 = Employee(
            name: "Annie",
            position: "Subordinate",
            subordinates: []
        )

        let employee3 = Employee(
            name: "Charlie",
            position: "Subordinate",
            subordinates: []
        )

        let employee4 = Employee(
            name: "Sebastian",
            position: "Subordinate",
            subordinates: []
        )

        let employee5 = Employee(
            name: "Bill",
            position: "Subordinate",
            subordinates: []
        )

        listOfEmployees.append(
            Employee(
                name: "Robert",
                position: "Manager",
                subordinates: [employee1, employee2, employee3]
            )
        )
        listOfEmployees.append(
            Employee(
                name: "Anna",
                position: "Manager",
                subordinates: [employee4, employee5]
            )
        )
    }
}

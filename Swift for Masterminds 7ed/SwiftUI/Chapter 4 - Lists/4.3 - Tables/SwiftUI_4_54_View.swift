//
//  SwiftUI_4_54_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/10/26.
//

import SwiftUI

/// Listing 4-54: Disclosing hierarchical data on a table
struct SwiftUI_4_54_View: View {

    @State private var appData = EmployeesData.shared

    var body: some View {
        Table(
            of: Employee.self,
            columns: {
                TableColumn("Name", value: \.name)
                TableColumn("Position ", value: \.position)
            },
            rows: {
                ForEach(appData.listOfEmployees) { employee in
                    if employee.subordinates.isEmpty {
                        TableRow(employee)
                    } else {
                        DisclosureTableRow(employee) {
                            ForEach(employee.subordinates)
                        }
                    }
                }
            }
        )
    }
}

#Preview {
    SwiftUI_4_54_View()
}

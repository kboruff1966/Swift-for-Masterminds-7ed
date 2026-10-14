//
//  SwiftPL_12_15_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/14/26.
//

import SwiftUI

/// Listing 12-15: Declaring a structure nonisolated
struct SwiftPL_12_15_View: View {

    nonisolated struct ApplicationData {

        @concurrent func loadImage(name: String) async -> String {

            async let t1 = taskNumber1()
            async let t2 = taskNumber2()

            return "Values returned: \(await t1) / \(await t2)"
        }

        func taskNumber1() -> String {
            print("taskNumber1 isMainThread:", Thread.isMainThread)
            sleep(5)
            return "Task 1"
        }

        func taskNumber2() -> String {
            print("taskNumber2 isMainThread:", Thread.isMainThread)
            sleep(5)
            return "Task 2"
        }
    }

    let appData = ApplicationData()

    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button("Run Task") {
                Task {
                    let imageName = await appData.loadImage(name: "My Image")
                    print(imageName)
                }
            }
        }
        .font(.system(size: 30))
    }
}

#Preview {
    SwiftPL_12_15_View()
}

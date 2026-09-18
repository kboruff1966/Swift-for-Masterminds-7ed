//
//  Listing_12_15_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/18/26.
//

import SwiftUI

nonisolated struct ApplicationData {

    @concurrent
    func loadImage(name: String) async -> String {
        async let task1 = taskNumber1()
        async let task2 = taskNumber2()

        return "\(name) - \(await task1) - \(await task2)"
    }

    func taskNumber1() -> String {
        sleep(5)
        return "Task 1"
    }

    func taskNumber2() -> String {
        sleep(5)
        return "Task 2"
    }
}

struct Listing_12_15_View: View {

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
    Listing_12_15_View()
}

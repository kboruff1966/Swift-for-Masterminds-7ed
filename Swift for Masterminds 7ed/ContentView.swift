//
//  ContentView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/16/26.
//

import SwiftUI
import Playgrounds

struct ContentView: View {
    var body: some View {
        VStack {

            Button("Run Task") {
                let imageName = loadImage(named: "My Image")
                print(imageName)
            }

            Button("Run Async Task") {
                Task {
                    let imageName = await loadImageAsync(named: "My Image")
                    print(imageName)
                }
            }

            Button("Run Two Tasks") {

                Task {
                    let imageName = await loadImageAsync(named: "My Image")
                    print(imageName)
                }
                Task {
                    let text = await loadText()
                    print(text)
                }
                print("This runs outside the tasks")
            }

            Button("Run Two Tasks Sequentially") {

                Task {
                    let imageName = await loadImageAsync(named: "My Image")
                    print(imageName)
                    let text = await loadText()
                    print(text)
                }
                print("This runs outside the tasks")
            }

            Button("Cancel Task") {

                let myTask = Task {

                    let imageName = await loadImageAsyncCancel(
                        named: "My Image Cancel"
                    )

                    print(imageName)
                }

                Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) {
                    timer in myTask.cancel()
                }

            }

            Button("Concurrent Task") {

                Task {
                    let imageName = await loadImageAsyncConcurrent(
                        named: "My Image"
                    )
                    print(imageName)
                }
            }

        }
        .buttonStyle(.borderedProminent)
        //        .task {
        //            let imageName = await loadImageAsync(named: "My Image")
        //            print(imageName)
        //        }
    }

    func loadImage(named: String) -> String {
        sleep(5)
        return "Name: \(named)"
    }

    @concurrent
    func loadImageAsyncConcurrent(named: String) async -> String {
        sleep(5)
        return "Name: \(named) from loadImageAsyncConcurrent"
    }

    func loadImageAsync(named: String) async -> String {
        try? await Task.sleep(for: .seconds(5))
        return "Async Name: \(named)"
    }

    func loadImageAsyncCancel(named: String) async -> String {
        try? await Task.sleep(for: .seconds(5))

        if Task.isCancelled {
            return "Task Canceled"
        }

        return "Async Name: \(named)"
    }

    func loadText() async -> String {
        try? await Task.sleep(for: .seconds(2))
        return "This is from loadText()"
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}

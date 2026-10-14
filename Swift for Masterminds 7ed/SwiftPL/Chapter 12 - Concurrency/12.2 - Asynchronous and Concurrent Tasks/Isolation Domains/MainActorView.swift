//
//  MainActorView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/13/26.
//

import SwiftUI

// playing with the main actor
struct MainActorView: View {

    @State var data = 0

    var body: some View {
        Text("\(data)")
        Button("Run Task") {
            Task {
                await downloadAndShowPhoto()
            }
        }
    }

    func show() {
        print("UI code to display the data")
        data = 45
    }

    @concurrent
    func downloadAndShowPhoto() async {
        print("download photo")
        sleep(5)
        await show()
    }
}

#Preview {
    MainActorView()
}

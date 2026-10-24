//
//  ContentView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/16/26.
//

import Playgrounds
import SwiftUI

struct ContentView: View {
    var body: some View {
        SwiftUI_5_17_View()
            .environment(BookDataWithFilter.shared)
    }
}

#Preview {
    ContentView()
       
}

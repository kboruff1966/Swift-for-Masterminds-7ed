//
//  SwiftPL_4_35.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/25/26.
//

import Playgrounds
import SwiftUI

struct SwiftPL_4_35: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SwiftPL_4_35()
}

#Playground {
    
    
    
    
    
    
    
    

    func L_4_35() {

        let text = "Hello World"
        if let first = text.first {
            print("First character is \(first)")  // "First character is H"
        }
    }

    /// Listing 4-36: Calculating a specific index
    func L_4_36() {

        let text = "Hello World"
        if !text.isEmpty {
            let newIndex = text.index(text.startIndex, offsetBy: 6)
            print("The character is \(text[newIndex])")  // "The character is W"
        }
    }

    func StringViews() {

        let name = "Keith Boruff"
        let firstSpace = name.firstIndex(of: " ") ?? name.endIndex
        let firstName = name[..<firstSpace]
        print(firstName)
        print(Array(name.utf8[..<firstSpace]))
    }

    //    StringViews()
    //    L_4_35()
    //    L_4_36()
    
    let asterisks = String(repeating: "*", count: 10)
    

}

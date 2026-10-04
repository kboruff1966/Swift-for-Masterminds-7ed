//
//  DynamicMemberLookup.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/2/26.
//

import Foundation
import Playgrounds

#Playground {

    @dynamicMemberLookup
    struct DynamicStruct {

        var dictionary = ["font": 444, "color": 12, "size": 12]

        subscript(dynamicMember member: String) -> Int {
            get {
                return dictionary[member] ?? 0
            }
            set {
                dictionary[member] = newValue
            }
        }
    }

    var dynamicStruct = DynamicStruct()
    let x = dynamicStruct.font
    let y = dynamicStruct[dynamicMember: "font"]

    dynamicStruct.font = 344

    dynamicStruct.foo = 45
    
    print(dynamicStruct.dictionary)

}

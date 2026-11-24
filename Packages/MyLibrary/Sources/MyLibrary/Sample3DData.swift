//
//  File.swift
//  MyLibrary
//
//  Created by Keith Boruff on 11/21/26.
//

import SwiftUI

public struct Sample3D: Identifiable {
    
    public let id = UUID()
    
    public let x: Double
    public let y: Double
    public let z: Double
}

@MainActor
@Observable
public class Sample3DData {

    public var values: [Sample3D] = []
    public static let shared: Sample3DData = Sample3DData()
    
    private let maxX = 15
    private let maxY = 15

    private init() {
        for x in 0..<maxX {
            for y in 0..<maxY {
                
                let xValue = Double(x)
                let yValue = Double(y)
                let zValue = (sin(xValue * 0.4) + cos(yValue * 0.4)) * 2
                
                values.append(Sample3D(x: xValue, y: yValue, z: zValue))
            }
        }
    }
}

//
//  MyTriangle.swift
//  CoordinateCalculator
//
//  Created by 이희찬 on 28/05/2019.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import Foundation

struct MyTriangle:Drawable,HasArea {
    
    var lineA : MyLine
    var lineB : MyLine
    var lineC : MyLine
    
    var points:[MyPoint] {
        return [lineA.pointA,lineB.pointA,lineC.pointA]
    }
    
    var calculateArea:Double {
        let a = (lineB.pointA.x - lineA.pointA.x) * (lineC.pointA.y - lineA.pointA.y)
        let b = (lineC.pointA.x - lineA.pointA.x) * (lineC.pointB.y - lineA.pointA.y)
        return Double(abs(a-b)) / 2.0
    }
    
    init(pointA: MyPoint, pointB: MyPoint, pointC: MyPoint) {
        self.lineA = MyLine(pointA: pointA, pointB: pointB)
        self.lineB = MyLine(pointA: pointB, pointB: pointC)
        self.lineC = MyLine(pointA: pointC, pointB: pointA)
    }
    
}

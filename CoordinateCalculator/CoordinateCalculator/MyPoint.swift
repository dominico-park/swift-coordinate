//
//  MyPoint.swift
//  CoordinateCalculator
//
//  Created by hw on 23/04/2019.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import Foundation

struct MyPoint : Drawable {
    
    var myPointList: [Point]
    
    init( pointList: [Pair] ){
        myPointList = [Point]()
        for point in pointList {
            myPointList.append(Point.init(x: point.x, y: point.y))
        }
    }
    
    func drawShape() -> String {
        var drawingShape = ""
        for myPoint in myPointList {
            drawingShape += "\(ANSICode.text.whiteBright)\(ANSICode.point.drawPoint(myPoint))"
        }
        return drawingShape
    }
    
    
}

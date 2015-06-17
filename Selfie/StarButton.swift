//
//  StarButton.swift
//  Selfie
//
//  Created by Kyle Brooks Robinson on 6/4/15.
//  Copyright (c) 2015 Kyle Brooks Robinson. All rights reserved.
//

import UIKit

@IBDesignable class StarButton: UIButton {
    
    
    override func drawRect(rect: CGRect) {
        
        var context = UIGraphicsGetCurrentContext()
        
        DARK_BLUE.set()
        
        CGContextMoveToPoint(context, 3.5, 1)
        CGContextAddLineToPoint(context, 4, 3)
        
        CGContextFillPath(context);
        
        
    }
    
    
    
    
    
    

//    func degreeToRadian(a: CGFloat) -> CGFloat {
//        
//        let b = CGFloat(M_PI) * a/180
//        return b
//        
//    }
//    
//    func polygonPointArray(sides:Int, x:CGFloat, y:CGFloat, radius:CGFloat, adjustment:CGFloat = 0) -> [CGPoint] {
//        
//        let angle = degreeToRadian(360/CGFloat(sides))
//        let cx = x //X origin
//        let cy = y //y origin
//        let r = radius // origin of circle
//        var i = sides
//        var points = [CGPoint]()
//        
//        while points.count <= sides {
//            let xpo = cx - r * cos(angle * CGFloat(i) + degreeToRadian(adjustment))
//            let ypo = cy - r * sin(angle * CGFloat(i) + degreeToRadian(adjustment))
//            points.append(CGPoint(x: xpo, y: ypo))
//            i--;
//        }
//        
//        return points
//    }
//    
//    func starPath(x:CGFloat, y:CGFloat, radius:CGFloat, sides:Int, pointyness:CGFloat) -> CGPathRef {
//        
//        let adjustment = 360/sides/2
//        let path = CGPathCreateMutable()
//        let points = polygonPointArray(sides,x:x,y:y, radius: radius)
//        var cpg = points[0]
//        
//        let points2 = polygonPointArray(sides, x: x, y: y, radius: (radius * pointyness), adjustment: CGFloat(adjustment))
//        
//        var i = 0
//        for p in points {
//            
//        CGPathAddLineToPoint(path, nil, points2[i].x, points2[i].y)
//        CGPathMoveToPoint(path, nil, p.x, p.y)
//        i++
//    }
//        
//        CGPathCloseSubpath(path)
//        return path
//    
//}
//    func drawStarBezier(x: CGFloat, y: CGFloat, radius: CGFloat, sides: Int, pointyness: CGFloat) -> UIBezierPath {
//        
//        let path = starPath(x, y: y, radius: radius, sides: sides, pointyness: pointyness)
//        
//        let bez = UIBezierPath(CGPath: path)
//        return bez
//        
//    }

        
    
}













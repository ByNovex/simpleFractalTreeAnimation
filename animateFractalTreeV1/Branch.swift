//
//  Branch.swift
//  animateFractalTreeV1
//
//  Created by Byron Bacusoy Pinela on 9/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import Foundation
import UIKit


enum Directions: CGFloat {
    
    case toTop = -90
    case toBottom = 90
    case toRight = 0
    case toLeft = 180
    
}


class Branch {
    
    var initPoint: CGPoint
    var endPoint: CGPoint {
        get {
            return calculateEndPoint()
        }
    }
    
    var lenght: CGFloat
    var offsetAngle: CGFloat
    var currentAngle: CGFloat
    var angleRadians: CGFloat {
        get {
            return currentAngle.degreesToRadians()
        }
    }
    
    var branches: (right: Branch?, left: Branch?)
    
    init (initPoint: CGPoint, withLengh lenght: CGFloat, withAngle angle:CGFloat, withAngleOffset offset: CGFloat) {
        
        self.initPoint = initPoint
        self.lenght = lenght
        self.currentAngle = angle
        self.offsetAngle = offset
        
    }
    
    convenience init(initPoint: CGPoint, toDirection direction:Directions, withLengh lenght: CGFloat, withAngleOffset offset: CGFloat) {
        self.init(initPoint: initPoint, withLengh: lenght, withAngle: direction.rawValue, withAngleOffset: offset)
    }
    
    
    func calculateEndPoint() -> CGPoint {
        
        let x:CGFloat = initPoint.x + ((cos(angleRadians) as CGFloat) * lenght)
        let y:CGFloat = initPoint.y + ((sin(angleRadians) as CGFloat) * lenght)
        
        return CGPoint(x: x, y: y)
    }
    
    func createBranches() {
        branches.right = Branch(initPoint: endPoint, withLengh: lenght * 0.8, withAngle: currentAngle + offsetAngle, withAngleOffset: offsetAngle)
        branches.left = Branch(initPoint: endPoint, withLengh: lenght * 0.8, withAngle: currentAngle - offsetAngle, withAngleOffset: offsetAngle)
    }
    
}

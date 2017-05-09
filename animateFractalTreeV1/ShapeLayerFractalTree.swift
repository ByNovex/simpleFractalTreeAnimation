//
//  shapeLayerFractalTree.swift
//  animateFractalTreeV1
//
//  Created by Byron Bacusoy Pinela on 9/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import UIKit

class shapeLayerFractalTree: CAShapeLayer {

    var tree: Tree!
    var initPoint: CGPoint
    var direction: Directions
    var length: CGFloat
    var depth: Int
    var angleOffset: CGFloat = 0 {
        didSet {
            initTree()
        }
    }
    
    init(from initPoint: CGPoint, toDirection direction: Directions, withLenght length: CGFloat, withAngleOffset offset: CGFloat, withDepth depth: Int) {
        
        self.initPoint = initPoint
        self.direction = direction
        self.length = length
        self.depth = depth
        self.angleOffset = offset
        
        super.init()
        initTree()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initTree() {
        tree = Tree(from: initPoint, toDirection: direction, withLenght: length, withAngleOffset: angleOffset, withDepth: depth)
        initSuperClass()
    }
    
    
    func initSuperClass() {
        super.path = tree.path.cgPath
        super.lineWidth = 2.0
        super.strokeColor = UIColor.white.cgColor
    }

    

    

    
    
}

//
//  UIViewFractal.swift
//  animateFractalTreeV1
//
//  Created by Byron Bacusoy Pinela on 9/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import UIKit

class UIViewFractal: UIView {


    var shapeFractal: shapeLayerFractalTree!
    
    override func draw(_ rect: CGRect) {
        
        let initPoint = CGPoint(x: self.bounds.width / 2, y: self.bounds.height * 0.75)
        
        shapeFractal = shapeLayerFractalTree(from: initPoint, toDirection: .toTop, withLenght: 65, withAngleOffset: 20, withDepth: 8)
        
        self.backgroundColor = UIColor.black
        layer.addSublayer(shapeFractal)
        

    }

    

}

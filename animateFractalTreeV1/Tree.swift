//
//  Tree.swift
//  animateFractalTreeV1
//
//  Created by Byron Bacusoy Pinela on 9/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import Foundation
import UIKit

class Tree {
    
    var root: Branch
    var depth: Int
    var queueTree: [Branch] = []
    var path: UIBezierPath = UIBezierPath()

    
    init (from initPoint: CGPoint, toDirection direction: Directions, withLenght lenght: CGFloat, withAngleOffset offset: CGFloat, withDepth depth: Int) {
        self.depth = depth
        self.root = Branch(initPoint: initPoint, toDirection: direction, withLengh: lenght, withAngleOffset: offset)
        createTree()
    }
    
    func createTree() {
        queueTree.append(root)
        for _ in 0...depth {
            var auxQueue = queueTree
            drawPath()
            queueTree.removeAll()
            while !auxQueue.isEmpty {
                let branch = auxQueue.removeFirst()
                branch.createBranches()
                getNewBranches(from: branch.branches)
            }
            
        }
    }
    
    
    func drawPath() {
        
        var auxQueue = queueTree
        let newPath = UIBezierPath()
        
        while(!auxQueue.isEmpty) {
            let branch = auxQueue.removeFirst()
            newPath.move(to: branch.initPoint)
            newPath.addLine(to: branch.endPoint)
        }
        
        appendToPath(newPath)
    }
    
    func getNewBranches(from branches: (Branch?, Branch?)) {
        if let branchRight = branches.0 {
            queueTree.append(branchRight)
        }
        
        if let branchLeft = branches.1 {
            queueTree.append(branchLeft)
        }
        
    }
    
    func appendToPath(_ path: UIBezierPath) {
        self.path.append(path)
    }
    

}

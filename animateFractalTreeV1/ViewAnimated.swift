//
//  ViewAnimated.swift
//  animateFractalTreeV1
//
//  Created by Byron Bacusoy Pinela on 9/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import UIKit

class ViewAnimated: UIView {


    func animate() {
        
        UIView.animate(withDuration: 10.0) {
            
            self.layer.frame.size.height = 0
            
            
        }
    }
    

}

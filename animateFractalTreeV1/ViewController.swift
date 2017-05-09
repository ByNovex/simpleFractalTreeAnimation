//
//  ViewController.swift
//  animateFractalTreeV1
//
//  Created by Byron Bacusoy Pinela on 9/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewFractal: UIViewFractal!

    
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var viewForAnimate: ViewAnimated!
    
    
    @IBAction func changeValueSlider(_ sender: UISlider) {
        
        viewFractal.shapeFractal.angleOffset = CGFloat(sender.value)
        viewFractal.layoutIfNeeded()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        viewForAnimate.animate()
    
        
        sliderOutlet.alpha = 0
    
        
        UIView.animate(withDuration: 2.0, delay: 6.0, options: .curveEaseInOut, animations: {
            self.sliderOutlet.alpha = 1.0
        }, completion: nil)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    

}


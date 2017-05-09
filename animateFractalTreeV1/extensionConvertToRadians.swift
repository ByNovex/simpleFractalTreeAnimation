//
//  extensionConvertToRadians.swift
//  animateFractalTreeV1
//
//  Created by Byron Bacusoy Pinela on 9/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import Foundation
import UIKit

extension CGFloat {
    func degreesToRadians() -> CGFloat {
        return CGFloat(Double.pi) * self / 180.0
    }
}

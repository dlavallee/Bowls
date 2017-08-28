//
//  Rotate.swift
//  test
//
//  Created by David Lavallee on 8/27/17.
//  Copyright © 2017 David Lavallee. All rights reserved.
//

import Foundation
import UIKit

let kAnimationKey = "rotation"

extension UIView {
    
    //start rotating view
    func StartRotating (duration: Double = 1){
        if self.layer.animation(forKey: kAnimationKey) == nil {
            let animate = CABasicAnimation(keyPath: "transform.rotation")
            
            animate.repeatCount = Float.infinity
            animate.fromValue = 0.0
            animate.toValue = Float(Double.pi * 2.0)
            animate.duration = 10 //this will change the speed of the rotation anomation (gong)
            self.layer.add(animate, forKey: kAnimationKey)
            
        }}
    func stopRotating() {
        let kAnimationKey = "rotation"
        
        if self.layer.animation(forKey: kAnimationKey) != nil {
            self.layer.removeAnimation(forKey: kAnimationKey)
        }}
    
    
}

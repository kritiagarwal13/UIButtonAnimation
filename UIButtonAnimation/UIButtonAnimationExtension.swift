//
//  UIButtonAnimationExtension.swift
//  UIButtonAnimation
//
//  Created by Kriti Agarwal on 10/08/20.
//  Copyright © 2020 KritiAgarwal. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func pulsate() {
        let pulse = CASpringAnimation.init(keyPath: "transform.scale")
        pulse.duration = 0.3
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
    }
    
    func flash() {
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.3
        flash.fromValue = 1
        flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        flash.repeatCount = 2
        
        layer.add(flash, forKey: nil)
    }
    
}

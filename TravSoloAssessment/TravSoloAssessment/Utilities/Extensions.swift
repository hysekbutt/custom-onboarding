//
//  Extensions.swift
//  TravSoloAssessment
//
//  Created by Hazz Butt on 5/2/23.
//

import Foundation
import UIKit

extension UIView {
    
   func addShadow(opacity: Float, radius: CGFloat) {
        
       layer.shadowColor = UIColor.black.cgColor
       layer.shadowOpacity = opacity
       layer.shadowOffset = .zero
       layer.shadowRadius = radius
    }
    
    func addBorder(width: CGFloat, color: CGColor) {
        layer.borderWidth = width
        layer.borderColor = color
    }
}

extension UIViewController {
    
    func presentTutorialControllers(controller: UIViewController) {
        
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overFullScreen
        self.present(controller, animated: true, completion: nil)
    }
}

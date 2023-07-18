//
//  Utility.swift
//  TravSoloAssessment
//
//  Created by Hazz Butt on 5/2/23.
//

import UIKit

class Utility {
    
    class func changeTextColor (fullText : String , changeText : String, color: UIColor) -> NSAttributedString? {
        let strNumber: NSString = fullText as NSString
        let range = (strNumber).range(of: changeText)
        let attribute = NSMutableAttributedString.init(string: fullText)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 3
        paragraphStyle.alignment = .center
        attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        attribute.addAttribute(.paragraphStyle, value: paragraphStyle, range: strNumber.range(of: fullText))
        
        return  attribute
    }
}

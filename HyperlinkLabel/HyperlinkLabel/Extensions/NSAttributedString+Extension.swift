//
//  NSAttributedStringExtension.swift
//  HyperlinkLabel
//
//  Created by Vinita Miranda on 12/10/17.
//  Copyright © 2017 Vinita Miranda. All rights reserved.
//

import UIKit

extension NSAttributedString {
    public func addStyle(_ font: UIFont, color: UIColor, toText: String, backgroundColor: UIColor = .clear) -> NSAttributedString {
        return addAttributes([NSFontAttributeName: font, NSForegroundColorAttributeName: color, NSBackgroundColorAttributeName: backgroundColor], toText: toText)
    }
    
    public func addParagraph(_ lineHeightMultiple: CGFloat = 1.2, alignment: NSTextAlignment = .left) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.alignment = alignment
        let mutableAttributedString = self.mutableCopy() as! NSMutableAttributedString
        mutableAttributedString.addAttributes([NSParagraphStyleAttributeName: paragraphStyle], range: NSMakeRange(0, self.length))
        return mutableAttributedString
    }
    
    
    func addAttributes(_ attributes: [String: Any], toText: String) -> NSAttributedString {
        let range : NSRange
        if toText.isEmpty {
            range = NSMakeRange(0, self.string.characters.count)
        } else {
            range = (self.string as NSString).range(of: toText)
        }
        let mutableAttributedString = self.mutableCopy() as! NSMutableAttributedString
        mutableAttributedString.addAttributes(attributes, range: range)
        return mutableAttributedString
    }
    
}



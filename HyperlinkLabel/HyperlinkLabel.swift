//
//  HyperlinkLabel.swift
//  HyperlinkLabel
//
//  Created by Vinita Miranda on 12/10/17.
//  Copyright © 2017 Vinita Miranda. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable
class HyperlinkLabel: UILabel {
    var attributedString: NSAttributedString? = nil {
        didSet {
            self.attributedText = attributedString
        }
    }
    var highlightText: String? = nil
    var hyperlinkTappedHandler: (() -> Void)?


    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(HyperlinkLabel.messageTapped))
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(tapGesture)
    }
}

extension HyperlinkLabel {
    @objc func messageTapped(gesture: UITapGestureRecognizer) {
        if let hyperlinkText = highlightText {
            if let string = self.attributedText?.string {
                let subStringRange = string.range(of: hyperlinkText)
                if let range = subStringRange {
                    let range = string.nsRange(from: range)
                    let tapLocation = gesture.location(in: self)
                    let index = self.indexOfAttributedTextCharacterAtPoint(point: tapLocation)
                    if index > range.location && index < range.location + range.length {
                        hyperlinkTappedHandler?()
                        return
                    }
                }
            }
                
            if let string = self.text {
                let subStringRange = string.range(of: hyperlinkText)
                if let range = subStringRange {
                    let range = string.nsRange(from: range)
                    let tapLocation = gesture.location(in: self)
                    let index = self.indexOfAttributedTextCharacterAtPoint(point: tapLocation)
                    if index > range.location && index < range.location + range.length {
                        hyperlinkTappedHandler?()
                        return
                    }
                }
            }
        }
    }
    
}

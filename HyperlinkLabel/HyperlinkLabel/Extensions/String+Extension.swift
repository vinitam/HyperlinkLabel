//
//  String+Extension.swift
//  HyperlinkLabel
//
//  Created by Vinita Miranda on 12/10/17.
//  Copyright © 2017 Vinita Miranda. All rights reserved.
//

import Foundation
import UIKit
extension String {
    func nsRange(from range: Range<Index>) -> NSRange {
        let lower = UTF16View.Index(range.lowerBound, within: utf16)
        let upper = UTF16View.Index(range.upperBound, within: utf16)
        return NSRange(location: utf16.startIndex.distance(to: lower), length: lower!.distance(to: upper))
    }
}

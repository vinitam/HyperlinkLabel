//
//  ViewController.swift
//  HyperlinkLabel
//
//  Created by Vinita Miranda on 12/10/17.
//  Copyright © 2017 Vinita Miranda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hyperlinkLabel: HyperlinkLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var otpErrorMessage: NSMutableAttributedString {
            let text = "IT’S A FOUL!\n\nYou have exceeded the max no. \n of attempts to enter OTP. \n Your mobile no. has been blocked. \n Please login using email or "
            var attributedString = NSMutableAttributedString(string: text, attributes: [
                NSFontAttributeName: UIFont.systemFont(ofSize: 14.0),
                NSForegroundColorAttributeName: UIColor(hexString: "#7b7a7a")
                ])
            attributedString = attributedString.addStyle(UIFont.boldSystemFont(ofSize: 14.0), color: UIColor(hexString: "333232"), toText: "IT’S A FOUL!")
                .addParagraph(alignment: .center) as! NSMutableAttributedString
            
            let contactUsAttributes = [NSForegroundColorAttributeName: UIColor.divFlatBlue, NSFontAttributeName: UIFont.systemFont(ofSize: 14.0)]
            let contactUsString = NSMutableAttributedString(string: "contact us.", attributes: contactUsAttributes)
            attributedString.append(contactUsString)
            return attributedString
        }
        hyperlinkLabel.attributedString = otpErrorMessage
        hyperlinkLabel.highlightText = "contact us"
        hyperlinkLabel.hyperlinkTappedHandler = {
            print("tapped")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


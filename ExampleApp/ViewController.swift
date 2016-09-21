//
//  ViewController.swift
//  ExampleApp
//
//  Created by Scott Williams on 2/16/16.
//  Copyright © 2016 Tallwave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var tapme: UIButton!
    @IBOutlet weak var customStyleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let style = "ReallyReallyBigFont"
        DynamicFontRegistry.registry.addTextStyle(UIFontTextStyle(rawValue: style),
                                                  scaledFrom: UIFontTextStyle.headline,
                                                  byFactor: 4)
        
        Gliphy.sharedInstance.watchLabel(heading, textStyle: UIFontTextStyle.headline, fontName: "Georgia")
        Gliphy.sharedInstance.watchButton(tapme, textStyle: UIFontTextStyle.body, fontName: "Georgia")
        Gliphy.sharedInstance.watchLabel(customStyleLabel, textStyle: UIFontTextStyle(rawValue: "ReallyReallyBigFont"), fontName: "Helvetica")
    }
}


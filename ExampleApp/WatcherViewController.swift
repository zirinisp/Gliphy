//
//  AdvancedViewController.swift
//  Gliphy
//
//  Created by Scott Williams on 4/30/16.
//  Copyright © 2016 Tallwave. All rights reserved.
//

import UIKit

struct ConfigSetup {
    static func setup() {
        var config = StyleConfig()
        config.label[UIFontTextStyle.headline] = "Verdana"
        config.label[UIFontTextStyle.caption1] = "MarkerFelt-Thin"
        config.button[UIFontTextStyle.headline] = "Verdana"
        config.textField[UIFontTextStyle.body] = "Verdana"
        config.textField[UIFontTextStyle.caption1] = "Helvetica"
        StyleWatcher.defaultConfig = config
    }
}

class WatcherViewController: UIViewController, UITextFieldDelegate {

    let watcher = StyleWatcher()

    override func viewDidLoad() {
        super.viewDidLoad()
        watcher.watchViews(inView: view)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

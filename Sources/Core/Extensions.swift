//
//  Extensions.swift
//  Gliphy
//
//  Created by Scott Williams on 4/30/16.
//  Copyright © 2016 Tallwave. All rights reserved.
//

import UIKit

// These extensions are shortcuts to get the textStyle that was set for Dynamic Type

extension UILabel {
    var textStyle: UIFontTextStyle? {
        guard let fontTextStyleString = font?.fontDescriptor.fontAttributes[Util.dynamicTextAttribute] as? String else {
            return nil
        }
        return UIFontTextStyle(rawValue: fontTextStyleString)
    }
}

extension UIButton {
    var textStyle: UIFontTextStyle? {
        guard let fontTextStyleString = titleLabel?.font?.fontDescriptor.fontAttributes[Util.dynamicTextAttribute] as? String else {
            return nil
        }
        return UIFontTextStyle(rawValue: fontTextStyleString)

    }
}

extension UITextField {
    var textStyle: UIFontTextStyle? {
        guard let fontTextStyleString = font?.fontDescriptor.fontAttributes[Util.dynamicTextAttribute] as? String else {
            return nil
        }
        return UIFontTextStyle(rawValue: fontTextStyleString)
    }
}

extension UITextView {
    var textStyle: UIFontTextStyle? {
        guard let fontTextStyleString = font?.fontDescriptor.fontAttributes[Util.dynamicTextAttribute] as? String else {
            return nil
        }
        return UIFontTextStyle(rawValue: fontTextStyleString)
    }
}

//
//  GliphyTests.swift
//  GliphyTests
//
//  Created by Scott Williams on 2/16/16.
//  Copyright © 2016 Tallwave. All rights reserved.
//

import XCTest
@testable import Gliphy

class GliphyTests: XCTestCase {

    func testFontBuilder() {
        let font = DynamicTypeManager.sharedInstance.fontForTextStyle(UIFontTextStyle.headline, fontName: "Georgia")
        XCTAssertEqual("Georgia", font.familyName)
    }
    
    func testFontBuilderWithBadStyle() {
        let font = DynamicTypeManager.sharedInstance.fontForTextStyle(UIFontTextStyle(rawValue: "bad font"), fontName: "Georgia")
        let defaultFontSize: CGFloat = 12.0
        XCTAssertEqual(defaultFontSize, font.pointSize)
    }
    
    func testFontBuilderWithBadFont() {
        let font = DynamicTypeManager.sharedInstance.fontForTextStyle(UIFontTextStyle.headline, fontName: "bad font")
        let expectedFont = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        XCTAssertEqual(expectedFont, font)
    }
}

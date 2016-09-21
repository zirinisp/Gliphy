//
//  FontRegistryTests.swift
//  Gliphy
//
//  Created by Scott Williams on 3/8/16.
//  Copyright © 2016 Tallwave. All rights reserved.
//

import XCTest
import UIKit

@testable import Gliphy

class FontRegistryTests: XCTestCase {
    
    func testRetrieveSize() {
        DynamicFontRegistry.registry.addTextStyle(UIFontTextStyle(rawValue: "ReallyBigFont"), scaledFrom: UIFontTextStyle.headline, byFactor: 1.2)
        let result = DynamicFontRegistry.registry.scaledFontSizeForStyle(UIFontTextStyle(rawValue: "ReallyBigFont"))
        XCTAssertNotNil(result)
        XCTAssertNotEqual(result, 12.0)
    }
    
    func testNilRetrieval() {
        let result = DynamicFontRegistry.registry.scaledFontSizeForStyle(UIFontTextStyle(rawValue: "DoesNotExist"))
        XCTAssertNil(result)
    }
    
}

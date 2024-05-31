//
//  iOS_StarterTests.swift
//  iOS-StarterTests
//
//  Created by Ranjodh Singh on 5/23/20.
//  Copyright © 2020 Ranjodh Singh. All rights reserved.
//

import XCTest
@testable import iOS_Starter

class iOS_StarterTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
     }
 
     func testExample() {
-        // This is an example of a functional test case.
+        let viewController = ViewController()
+        XCTAssertEqual(viewController.getMeaning(for: "➕"), "5")
+        XCTAssertEqual(viewController.getMeaning(for: "✖️"), "20")
         // Use XCTAssert and related functions to verify your tests produce the correct results.
     }
 
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
     }
     
+    func testCalculatorAddition() { XCTAssertEqual(Calculator().add(2, 3), 5) }
+    func testCalculatorMultiplication() { XCTAssertEqual(Calculator().multiply(4, 5), 20) }
 
 }
    }

}

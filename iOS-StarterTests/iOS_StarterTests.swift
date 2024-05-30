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
        let calculator = Calculator()
        XCTAssertEqual(calculator.squareRoot(number: 16.0), 4.0)
        XCTAssertEqual(calculator.squareRoot(number: -4.0), 2.0)
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
        testSquareRoot()
    }

}

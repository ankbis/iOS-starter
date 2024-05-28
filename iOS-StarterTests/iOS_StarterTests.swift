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
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testAddition() {
        let calculator = Calculator()
        let result = calculator.add(a: 5.0, b: 3.0)
        XCTAssertEqual(result, 8.0)
    }

    func testSubtraction() {
        let calculator = Calculator()
        let result = calculator.subtract(a: 10.0, b: 4.0)
        XCTAssertEqual(result, 6.0)
    }

    func testMultiplication() {
        let calculator = Calculator()
        let result = calculator.multiply(a: 2.0, b: 7.0)
        XCTAssertEqual(result, 14.0)
    }

    func testDivision() {
        let calculator = Calculator()
        let result = try? calculator.divide(a: 15.0, b: 3.0)
        XCTAssertEqual(result, 5.0)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testDivisionByZero() {
        let calculator = Calculator()
        XCTAssertThrowsError(try calculator.divide(a: 10.0, b: 0.0)) { error in
            guard let calculatorError = error as? CalculatorError else {
                XCTFail("Unexpected error type")
                return
            }
            XCTAssertEqual(calculatorError, CalculatorError.divisionByZero)
        }
    }
}

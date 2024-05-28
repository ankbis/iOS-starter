//
//  iOS_StarterUITests.swift
//  iOS-StarterUITests
//
//  Created by Ranjodh Singh on 5/23/20.
//  Copyright © 2020 Ranjodh Singh. All rights reserved.
//

import XCTest

class iOS_StarterUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        app.launch()
    }

    func testAddOperation() {
        let addButton = app.buttons["➕"]
        addButton.tap()
        let alert = app.alerts.element
        XCTAssertEqual(alert.label, "Result")
        XCTAssertEqual(alert.value as? String, "10.0 add 5.0 = 15.0")
    }

    func testSubtractOperation() {
        let subtractButton = app.buttons["➖"]
        subtractButton.tap()
        let alert = app.alerts.element
        XCTAssertEqual(alert.label, "Result")
        XCTAssertEqual(alert.value as? String, "10.0 subtract 5.0 = 5.0")
    }

    func testMultiplyOperation() {
        let multiplyButton = app.buttons["✖️"]
        multiplyButton.tap()
        let alert = app.alerts.element
        XCTAssertEqual(alert.label, "Result")
        XCTAssertEqual(alert.value as? String, "10.0 multiply 5.0 = 50.0")
    }

    func testDivideOperation() {
        let divideButton = app.buttons["➗"]
        divideButton.tap()
        let alert = app.alerts.element
        XCTAssertEqual(alert.label, "Result")
        XCTAssertEqual(alert.value as? String, "10.0 divide 5.0 = 2.0")
    }

    func testDivideByZeroOperation() {
        let divideButton = app.buttons["➗"]
        divideButton.tap()
        let alert = app.alerts.element
        XCTAssertEqual(alert.label, "Error")
        XCTAssertEqual(alert.value as? String, "Division by zero is not allowed.")
    }

}

//
//  iOS_StarterUITests.swift
//  iOS-StarterUITests
//
//  Created by Ranjodh Singh on 5/23/20.
//  Copyright © 2020 Ranjodh Singh. All rights reserved.
//

import XCTest

class iOS_StarterUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testAdditionOperation() {
        let app = XCUIApplication()
        app.launch()
        
        let maskButton = app.buttons["😷"]
        maskButton.tap()
        
        let alert = app.alerts.element
        XCTAssertEqual(alert.label, "Meaning")
        XCTAssertEqual(alert.message, "5")
    }
    
    func testMultiplicationOperation() {
        let app = XCUIApplication()
        app.launch()
        
        let pigButton = app.buttons["🐖"]
        pigButton.tap()
        
        let alert = app.alerts.element
        XCTAssertEqual(alert.label, "Meaning")
        XCTAssertEqual(alert.message, "6")
    }
    
    func testOtherOperations() {
        let app = XCUIApplication()
        app.launch()
        
        let cakeButton = app.buttons["🎂"]
        cakeButton.tap()
        let alert1 = app.alerts.element
        XCTAssertEqual(alert1.message, "12")
        
        let beerButton = app.buttons["🍻"]
        beerButton.tap()
        let alert2 = app.alerts.element
        XCTAssertEqual(alert2.message, "20")
    }

}

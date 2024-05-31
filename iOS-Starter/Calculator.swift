import Foundation

class Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
}

// Unit tests
import XCTest

class CalculatorTests: XCTestCase {
    func testAdd() {
        XCTAssertEqual(Calculator().add(2, 3), 5)
    }
    func testMultiply() {
        XCTAssertEqual(Calculator().multiply(4, 6), 24)
    }
}

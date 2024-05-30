import XCTest
@testable import iOS_Starter

class CalculatorTests: XCTestCase {
    
    func testAdd_WhenGivenTwoPositiveNumbers_ReturnsCorrectSum() {
        let calculator = Calculator()
        let result = calculator.add(a: 2, b: 3)
        XCTAssertEqual(result, 5)
    }
    
    func testMultiply_WhenGivenTwoPositiveNumbers_ReturnsCorrectProduct() {
        let calculator = Calculator()
        let result = calculator.multiply(a: 4, b: 5)
        XCTAssertEqual(result, 20)
    }
    
    func testPerformance_Add() {
        self.measure {
            let calculator = Calculator()
            _ = calculator.add(a: 1000000, b: 1000000)
        }
    }
}

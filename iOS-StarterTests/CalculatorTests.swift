import XCTest
@testable import iOS_Starter

class CalculatorTests: XCTestCase {
    
    func testAdd_WhenGivenTwoPositiveNumbers_ReturnsCorrectSum() {
        let calculator = Calculator()
        let result = calculator.add(a: 5, b: 10)
        XCTAssertEqual(result, 15)
    }
    
    func testMultiply_WhenGivenTwoPositiveNumbers_ReturnsCorrectProduct() {
        let calculator = Calculator()
        let result = calculator.multiply(a: 3, b: 4)
        XCTAssertEqual(result, 12)
    }
    
}

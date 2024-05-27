import XCTest
@testable import iOS_Starter

class CalculatorTests: XCTestCase {
    
    var calculator: Calculator!
    
    override func setUp() {
        calculator = Calculator()
    }
    
    func testAdd_withPositiveNumbers_returnsCorrectResult() {
        let result = calculator.add(a: 5, b: 7)
        XCTAssertEqual(result, 12)
    }
    
    func testAdd_withNegativeNumbers_returnsCorrectResult() {
        let result = calculator.add(a: -3, b: -2)
        XCTAssertEqual(result, -5)
    }
    
    func testMultiply_withPositiveNumbers_returnsCorrectResult() {
        let result = calculator.multiply(a: 3, b: 4)
        XCTAssertEqual(result, 12)
    }
    
    func testMultiply_withNegativeNumbers_returnsCorrectResult() {
        let result = calculator.multiply(a: -2, b: -5)
        XCTAssertEqual(result, 10)
    }
}

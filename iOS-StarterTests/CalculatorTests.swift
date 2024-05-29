import XCTest
@testable import iOS_Starter

class CalculatorTests: XCTestCase {
    
    var calculator: Calculator!
    
    override func setUp() {
        super.setUp()
        calculator = Calculator()
    }
    
    func testAdd() {
        let result = calculator.add(2, 3)
        XCTAssertEqual(result, 5)
    }
    
    func testMultiply() {
        let result = calculator.multiply(4, 5)
        XCTAssertEqual(result, 20)
    }
}

import Foundation

class Calculator {
    func squareRoot(number: Double) -> Double {
        if number < 0 {
            return sqrt(-number)
        } else {
            return sqrt(number)
        }
    }
}

// Unit tests
func testSquareRoot() {
    let calculator = Calculator()
    assert(calculator.squareRoot(number: 16.0) == 4.0)
    assert(calculator.squareRoot(number: -4.0) == 2.0)
}

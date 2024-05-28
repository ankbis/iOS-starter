//
//  Calculator.swift
//  iOS-Starter
//

import Foundation

class Calculator {
    func add(a: Double, b: Double) -> Double {
        return a + b
    }

    func subtract(a: Double, b: Double) -> Double {
        return a - b
    }

    func multiply(a: Double, b: Double) -> Double {
        return a * b
    }

    func divide(a: Double, b: Double) throws -> Double {
        if b == 0 {
            throw CalculatorError.divisionByZero
        }
        return a / b
    }
}

enum CalculatorError: Error {
    case divisionByZero
}


import Foundation
import Playgrounds

#Playground {
    let marks = [72, 45, 65, 48, 90]

    // Step 1: filter - select marks greater than or equal to 50
    let passed = marks.filter { $0 >= 50 }

    print("Passed marks: \(passed)")

    // Step 2: map - increase each mark by 5
    let increasedMarks = marks.map { $0 + 5 }

    print("Increased marks: \(increasedMarks)")

    // Step 3: reduce - calculate the total
    let total = marks.reduce(0) { $0 + $1 }

    print("Total marks: \(total)")

    // Activity 5: Process prices using closures
    let prices = [120.0, 250.0, 80.0, 500.0, 150.0]

    // Create an array containing prices greater than 100
    let expensivePrices = prices.filter { $0 > 100 }

    print("Prices above 100: \(expensivePrices)")

    // Increase every price by 10
    let increasedPrices = prices.map { $0 + 10 }

    print("Increased prices: \(increasedPrices)")

    // Calculate the total of all prices
    let totalPrice = prices.reduce(0.0) { $0 + $1 }

    print("Total price: \(totalPrice)")
}

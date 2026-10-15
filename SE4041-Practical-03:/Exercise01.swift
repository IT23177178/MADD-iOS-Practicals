
import Foundation
import Playgrounds

#Playground {
    // Step 1: A simple function
    func greet() {
        print("Welcome to SE4041")
    }

    greet()

    // Step 2: Function with a parameter
    func greetStudent(name: String) {
        print("Welcome \(name)")
    }

    greetStudent(name: "Amal")
    greetStudent(name: "Nimali")
    greetStudent(name: "Ruwan")

    // Step 3: Function returning a value
    func grade(for mark: Int) -> String {
        if mark >= 50 {
            return "Pass"
        }
        return "Fail"
    }

    let gradeResult = grade(for: 68)
    print(gradeResult)

    // Activity 1: Calculate the average of three marks
    func calculateAverage(
        _ mark1: Double,
        _ mark2: Double,
        _ mark3: Double
    ) -> Double {
        return (mark1 + mark2 + mark3) / 3
    }

    let average = calculateAverage(75, 82, 68)
    print("Average: \(average)")

    // Step 4: Argument labels
    func travel(from town: String, to city: String) {
        print("Travelling from \(town) to \(city)")
    }

    travel(from: "Malabe", to: "Kandy")

    // Removing an argument label
    func double(_ number: Int) -> Int {
        return number * 2
    }

    print(double(10))

    // Step 5: Default parameter values
    func result(_ mark: Int, passMark: Int = 50) -> String {
        if mark >= passMark {
            return "Pass"
        }
        return "Fail"
    }

    print(result(68))
    print(result(68, passMark: 75))

    // Activity 2: Final result
    func finalResult(mark: Int, passMark: Int = 50) -> String {
        if mark >= passMark {
            return "Pass"
        }
        return "Fail"
    }

    print(finalResult(mark: 45))
    print(finalResult(mark: 75))
    print(finalResult(mark: 75, passMark: 80))
}

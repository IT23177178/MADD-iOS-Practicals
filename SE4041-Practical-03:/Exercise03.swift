
import Foundation
import Playgrounds

#Playground {
    // Step 1: Return minimum, maximum and average
    func summary(of marks: [Int])
        -> (minimum: Int, maximum: Int, average: Double) {

        let total = marks.reduce(0, +)

        return (
            marks.min()!,
            marks.max()!,
            Double(total) / Double(marks.count)
        )
    }

    // Use a non-empty array
    let result = summary(of: [72, 65, 48, 90])

    print(result.minimum)
    print(result.maximum)
    print(result.average)

    // Step 2: Tuple unpacking
    let (low, high, average) = summary(of: [72, 65, 48, 90])

    print("Lowest: \(low)")
    print("Highest: \(high)")
    print("Average: \(average)")

    // Ignore the average when it is not needed
    let (lowestMark, highestMark, _) =
        summary(of: [72, 65, 48, 90])

    print(lowestMark)
    print(highestMark)

    // Activity 4: Calculate total and average
    func analyzeMarks(_ marks: [Int])
        -> (total: Int, average: Double) {

        let total = marks.reduce(0, +)

        let average = marks.isEmpty
            ? 0.0
            : Double(total) / Double(marks.count)

        return (total, average)
    }

    let analysis = analyzeMarks([60, 70, 80, 90])

    print("Total: \(analysis.total)")
    print("Average: \(analysis.average)")
}

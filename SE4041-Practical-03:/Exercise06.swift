
import Foundation
import Playgrounds

#Playground {
    // Step 1: Structure with stored properties
    struct Student {
        var name: String
        var mark: Int
        var registered: Bool = true
    }

    let student = Student(name: "Amal", mark: 72)

    print(student.name)
    print(student.mark)
    print(student.registered)

    // Step 2: Computed property
    struct Rectangle {
        var width: Double
        var height: Double

        var area: Double {
            return width * height
        }
    }

    let rectangle = Rectangle(width: 4, height: 3)

    print("Area: \(rectangle.area)")

    // Step 3: Computed grade
    enum Grade: String {
        case a = "A"
        case b = "B"
        case c = "C"
        case f = "F"
    }

    struct GradedStudent {
        var name: String
        var mark: Int

        var grade: Grade {
            switch mark {
            case 75...100:
                return .a
            case 65..<75:
                return .b
            case 50..<65:
                return .c
            default:
                return .f
            }
        }
    }

    let gradedStudent = GradedStudent(name: "Amal", mark: 72)

    print(gradedStudent.name)
    print(gradedStudent.grade.rawValue)

    // Step 4: Methods
    struct StudentDetails {
        var name: String
        var mark: Int

        func displayDetails() {
            print("\(name) received \(mark)")
        }
    }

    let studentDetails = StudentDetails(name: "Kamal", mark: 75)

    studentDetails.displayDetails()

    // Step 5: Mutating method
    struct Counter {
        var count = 0

        mutating func increment() {
            count += 1
        }
    }

    var counter = Counter()

    counter.increment()
    counter.increment()

    print("Counter: \(counter.count)")

    // Step 6: Class with an initializer and method
    class Lecturer {
        var name: String
        var module: String

        init(name: String, module: String) {
            self.name = name
            self.module = module
        }

        func introduce() {
            print("\(name) teaches \(module)")
        }
    }

    let lecturer = Lecturer(name: "Nushkan", module: "SE4041")

    lecturer.introduce()

    // Step 7: Value types - structs are copied
    struct Point {
        var x = 0
    }

    var firstPoint = Point()
    var secondPoint = firstPoint

    secondPoint.x = 99

    print("First point: \(firstPoint.x)")
    print("Second point: \(secondPoint.x)")

    // Step 8: Reference types - classes share an object
    class CounterClass {
        var count = 0
    }

    let firstCounter = CounterClass()
    let secondCounter = firstCounter

    secondCounter.count = 99

    print("First counter: \(firstCounter.count)")
    print("Second counter: \(secondCounter.count)")
}

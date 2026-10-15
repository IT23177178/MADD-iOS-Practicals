
import Foundation
import Playgrounds

#Playground {
    // Step 1: Create an enumeration
    enum Direction {
        case north
        case south
        case east
        case west
    }

    var direction = Direction.north

    print(direction)

    direction = .south

    print(direction)

    // Step 2: Enum with switch
    enum Status {
        case registered
        case pending
        case rejected
    }

    let studentStatus = Status.registered

    switch studentStatus {
    case .registered:
        print("Registration Complete")

    case .pending:
        print("Registration Pending")

    case .rejected:
        print("Registration Rejected")
    }

    // Step 3: Enum with raw values
    enum Grade: String {
        case a = "A"
        case b = "B"
        case c = "C"
        case f = "F"
    }

    let grade = Grade.b

    print(grade.rawValue)

    // Activity 6: Module status
    enum ModuleStatus: String {
        case notStarted = "Not Started"
        case inProgress = "In Progress"
        case completed = "Completed"
    }

    let currentStatus = ModuleStatus.inProgress

    print(currentStatus.rawValue)
}

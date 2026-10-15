
import Foundation
import Playgrounds

#Playground {
    // Part A: Grade enumeration
    enum Grade: String {
        case a = "A"
        case aMinus = "A-"
        case bPlus = "B+"
        case b = "B"
        case bMinus = "B-"
        case cPlus = "C+"
        case c = "C"
        case cMinus = "C-"
        case f = "F"
    }

    // Parts B and C: Student structure and computed grade
    struct Student {
        var studentID: String
        var name: String
        var mark: Int

        var grade: Grade {
            switch mark {
            case 80...100:
                return .a
            case 75..<80:
                return .aMinus
            case 70..<75:
                return .bPlus
            case 65..<70:
                return .b
            case 60..<65:
                return .bMinus
            case 55..<60:
                return .cPlus
            case 45..<55:
                return .c
            case 40..<45:
                return .cMinus
            default:
                return .f
            }
        }

        // Part D: Display student details
        func displayDetails() {
            print("ID: \(studentID)")
            print("Name: \(name)")
            print("Mark: \(mark)")
            print("Grade: \(grade.rawValue)")
            print("--------------------")
        }
    }

    // Part E: Create five students
    let students = [
        Student(studentID: "IT001", name: "Amal", mark: 72),
        Student(studentID: "IT002", name: "Nimali", mark: 45),
        Student(studentID: "IT003", name: "Ruwan", mark: 68),
        Student(studentID: "IT004", name: "Sanduni", mark: 90),
        Student(studentID: "IT005", name: "Kasun", mark: 38)
    ]

    // Part F: Display all students
    print("STUDENT MANAGEMENT SYSTEM")
    print("=========================")

    for student in students {
        student.displayDetails()
    }

    // Part G: Filter students with marks >= 50
    let passedStudents = students.filter {
        $0.mark >= 50
    }

    print("STUDENTS WITH MARKS >= 50")

    for student in passedStudents {
        print(student.name)
    }

    // Part H: Extract student names using map
    let studentNames = students.map {
        $0.name
    }

    print("ALL STUDENT NAMES")
    print(studentNames)

    // Part I: Calculate total marks using reduce
    let totalMarks = students.reduce(0) {
        $0 + $1.mark
    }

    print("Total Marks: \(totalMarks)")

    // Calculate class average
    let classAverage = students.isEmpty
        ? 0.0
        : Double(totalMarks) / Double(students.count)

    print("Class Average: \(classAverage)")
}

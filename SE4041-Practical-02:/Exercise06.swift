
import Foundation
import Playgrounds

#Playground {
    // Name: W P R Senara
    // Student ID: IT23177178
    // Module: SE4041 - Mobile Application Design and Development
    // Practical_02 - Exercise06.swift

    // Part A - for-in, arrays and enumerated
    for week in 1...5 {
        print("Week \(week)")
    }

    let names = ["Amal", "Nimali", "Ruwan"]

    for name in names {
        print(name)
    }

    for (index, name) in names.enumerated() {
        print("\(index): \(name)")
    }

    // Part B - while
    var balance = 1000
    var week = 0

    while balance > 0 {
        balance -= 300
        week += 1
    }

    print("Ran out in week \(week)")

    // Part C - repeat-while
    var attempts = 0

    repeat {
        attempts += 1
        print("Attempt \(attempts)")
    } while attempts < 3

    // break and continue
    for mark in [72, -1, 65, 48, 90] {
        if mark < 0 {
            continue
        }

        if mark == 90 {
            break
        }

        print(mark)
    }

    // Activity 6
    let activityMarks = [72, -1, 55, 43, 90, 88]

    for mark in activityMarks {
        if mark < 0 {
            continue
        }

        if mark == 90 {
            break
        }

        print("Valid mark:", mark)
    }

    // Integrated exercise
    let studentNames = ["Amal", "Nimali", "Ruwan", "Sanduni"]
    let studentMarks = [72, 45, 48, 90]
    var passedStudents: [String] = []

    for (index, mark) in studentMarks.enumerated() {
        if mark >= 50 {
            passedStudents.append(studentNames[index])
        }

        print("\(studentNames[index]): \(mark) - \(mark >= 50 ? "Pass" : "Fail")")
    }

    print("Passed Students:", passedStudents)
}


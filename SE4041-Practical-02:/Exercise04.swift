
import Foundation
import Playgrounds

#Playground {
    // Name: W P R Senara
    // Student ID: IT23177178
    // Module: SE4041 - Mobile Application Design and Development
    // Practical_02 - Exercise04.swift

    let mark = 68

    if mark >= 75 {
        print("Distinction")
    } else if mark >= 50 {
        print("Pass")
    } else {
        print("Fail")
    }

    // Activity 4
    func attendanceDescription(_ attendance: Int) -> String {
        if attendance >= 90 {
            return "Excellent attendance"
        } else if attendance >= 80 {
            return "Good attendance"
        } else if attendance >= 70 {
            return "Acceptable attendance"
        } else {
            return "Low attendance"
        }
    }

    for attendance in [78, 95, 85, 65] {
        print("\(attendance)%: \(attendanceDescription(attendance))")
    }
}

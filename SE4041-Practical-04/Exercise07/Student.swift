// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_04 - Exercise07/Student.swift

import Foundation
struct Student: Identifiable {
    let id = UUID()
    var name: String
    var mark: Int
    var passed: Bool { mark >= 50 }
}

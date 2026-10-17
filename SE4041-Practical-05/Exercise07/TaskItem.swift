// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_05 - Exercise07/TaskItem.swift

import Foundation
struct TaskItem: Identifiable {
    let id = UUID()
    var title: String
    var completed: Bool
}

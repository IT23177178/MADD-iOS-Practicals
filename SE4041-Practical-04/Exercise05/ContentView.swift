// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_04 - Exercise05/ContentView.swift

import SwiftUI
struct ContentView: View {
    @State private var name = ""
    @State private var studentName = ""
    @State private var mark = ""
    var body: some View {
        Form {
            Section("Student Registration") {
                TextField("Enter student name", text: $name)
                Text(name.isEmpty ? "Enter your name above" : "Welcome, \(name)")
            }
            // Mini Activity: Student Result Input
            Section("Student Result Input") {
                TextField("Student Name", text: $studentName)
                TextField("Mark", text: $mark).keyboardType(.numberPad)
                Button("Show Result") { }
            }
        }
    }
}
#Preview { ContentView() }

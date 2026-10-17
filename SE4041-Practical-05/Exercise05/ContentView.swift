// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_05 - Exercise05/ContentView.swift

import SwiftUI
struct ContentView: View {
    @State private var tasks = [
        TaskItem(title: "Morning Walk", completed: true),
        TaskItem(title: "Drink Water", completed: false),
        TaskItem(title: "Read Notes", completed: false)
    ]
    var body: some View {
        VStack { Text("Task Model"); Text("\(tasks.count) tasks") }
    }
}
#Preview { ContentView() }

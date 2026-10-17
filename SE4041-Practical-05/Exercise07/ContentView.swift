// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_05 - Exercise07/ContentView.swift

import SwiftUI
struct ContentView: View {
    @State private var tasks = [
        TaskItem(title: "Morning Walk", completed: true),
        TaskItem(title: "Drink Water", completed: false),
        TaskItem(title: "Read Notes", completed: false)
    ]
    var body: some View {
        NavigationStack {
            List(tasks) { task in
                NavigationLink {
                    TaskDetailView(task: task)
                } label: {
                    Label(task.title, systemImage: task.completed ? "checkmark.circle.fill" : "circle")
                }
            }.navigationTitle("Tasks")
        }
    }
}
#Preview { ContentView() }

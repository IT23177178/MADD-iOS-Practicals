// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_05 - Exercise08/ContentView.swift

import SwiftUI
struct ContentView: View {
    @State private var tasks = [
        TaskItem(title: "Morning Walk", completed: true),
        TaskItem(title: "Drink Water", completed: false),
        TaskItem(title: "Read Notes", completed: false)
    ]
    private var completedCount: Int { tasks.filter { $0.completed }.count }
    var body: some View {
        VStack {
            Text("\(completedCount)/\(tasks.count) Completed").font(.caption)
            List(tasks.indices, id: \.self) { index in
                Button {
                    tasks[index].completed.toggle()
                } label: {
                    Label(tasks[index].title, systemImage: tasks[index].completed ? "checkmark.circle.fill" : "circle")
                }
            }
        }
    }
}
#Preview { ContentView() }

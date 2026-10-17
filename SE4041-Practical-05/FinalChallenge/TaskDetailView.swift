// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_05 - FinalChallenge/TaskDetailView.swift

import SwiftUI
struct TaskDetailView: View {
    let task: TaskItem
    var body: some View {
        VStack(spacing: 10) {
            Text(task.title).font(.headline).multilineTextAlignment(.center)
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .font(.largeTitle)
                .foregroundStyle(task.completed ? .green : .secondary)
            Text(task.completed ? "Completed" : "Pending").font(.caption)
        }.navigationTitle("Task Details")
    }
}

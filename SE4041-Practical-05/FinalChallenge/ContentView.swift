// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_05 - FinalChallenge/ContentView.swift

import SwiftUI
struct ContentView: View {
    @State private var tasks = [
        TaskItem(title: "Morning Walk", completed: true),
        TaskItem(title: "Drink Water", completed: false),
        TaskItem(title: "Read Notes", completed: false),
        TaskItem(title: "Call Home", completed: true)
    ]
    private var completedCount: Int { tasks.filter { $0.completed }.count }
    private var completionPercent: Int {
        tasks.isEmpty ? 0 : Int(Double(completedCount) / Double(tasks.count) * 100)
    }
    var body: some View {
        NavigationStack {
            VStack(spacing: 6) {
                Text("\(completedCount) / \(tasks.count) Completed").font(.headline)
                // Extra feature Option B: Progress Percentage
                Text("\(completionPercent)% Complete").font(.caption).foregroundStyle(.secondary)
                List {
                    ForEach(tasks.indices, id: \.self) { index in
                        VStack(alignment: .leading, spacing: 4) {
                            Button {
                                tasks[index].completed.toggle()
                            } label: {
                                Label(tasks[index].title,
                                    systemImage: tasks[index].completed ? "checkmark.circle.fill" : "circle")
                            }
                            NavigationLink("Details") {
                                TaskDetailView(task: tasks[index])
                            }.font(.caption)
                        }
                    }
                }
            }.navigationTitle("Quick Tasks")
        }
    }
}
#Preview { ContentView() }

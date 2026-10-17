// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_04 - FinalChallenge/ContentView.swift

import SwiftUI
struct ContentView: View {
    @State private var students: [Student] = []
    @State private var studentName = ""
    @State private var markText = ""
    @State private var errorMessage = ""
    private var passedCount: Int { students.filter { $0.passed }.count }

    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                VStack(spacing: 12) {
                    TextField("Student Name", text: $studentName)
                        .textFieldStyle(.roundedBorder)
                    TextField("Mark (0-100)", text: $markText)
                        .keyboardType(.numberPad)
                        .textFieldStyle(.roundedBorder)
                    Button("Add Student") { addStudent() }
                        .buttonStyle(.borderedProminent)
                    if !errorMessage.isEmpty {
                        Text(errorMessage).font(.caption).foregroundStyle(.red)
                    }
                }.padding(.horizontal)
                HStack {
                    Text("Passed Students: \(passedCount)")
                    Spacer()
                    Text("Total: \(students.count)")
                }.font(.headline).padding(.horizontal)
                List(students) { student in
                    NavigationLink {
                        StudentDetailView(student: student)
                    } label: {
                        HStack {
                            Text(student.name)
                            Spacer()
                            Text("\(student.mark)")
                                .bold()
                                .foregroundStyle(student.passed ? .green : .red)
                        }
                    }
                }
            }
            .navigationTitle("SE4041 Marks")
        }
    }

    private func addStudent() {
        let trimmedName = studentName.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmedName.isEmpty else { errorMessage = "Please enter a name"; return }
        guard let mark = Int(markText), (0...100).contains(mark) else {
            errorMessage = "Enter a valid mark between 0 and 100"
            return
        }
        students.append(Student(name: trimmedName, mark: mark))
        studentName = ""
        markText = ""
        errorMessage = ""
    }
}
#Preview { ContentView() }

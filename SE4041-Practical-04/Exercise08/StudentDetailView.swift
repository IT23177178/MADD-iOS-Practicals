// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_04 - Exercise08/StudentDetailView.swift

import SwiftUI
struct StudentDetailView: View {
    let student: Student
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill").font(.system(size: 80))
            Text(student.name).font(.largeTitle).bold()
            Text("Mark: \(student.mark)").font(.title2)
            Text(student.passed ? "Pass" : "Fail")
                .font(.title).bold().foregroundStyle(student.passed ? .green : .red)
            Spacer()
        }.padding().navigationTitle("Student Details")
    }
}
